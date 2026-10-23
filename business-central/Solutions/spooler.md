---
title: Spooler | Microsoft Docs
description: Spooler is used for communication of Business Central with external systems or data sources.

ms.service: dynamics365-business-central
ms.topic: Spooler
ms.devlang: na
ms.tgt_pltfrm: na
ms.workload: na
ms.search.keywords: spooler, buffer, in buffer, out buffer, archive, agent, log
ms.date: 10/06/2026
ms.author: AC RobertJelen
---
# Spooler

> Update 16.10.2026

Spooler is used for communication of the Microsoft Dynamics Business Central system with external systems or data sources.

It has two basic functions:

- Repository of unprocessed tasks and an archive of communication documents.
- A tool for various types of communications and for processing incoming documents.

Communication can take place both from Business Central to an external system or vice versa from an external system to Business Central. The Spooler supports the following interaction methods: HTTP, E-Mail, Web Service, Spooler API, Spooler SOAP Web Service and Spooler OData Web Service. The supported methods are extended continuously.

This module has a multifaceted use - in data synchronization between systems (catalogues, system settings within holdings), in query communication with external systems (e.g. for B2B or B2C systems), for archiving and processing of automatic electronic documents (order systems, electronic deliveries, invoicing, confirmations).

In addition to the function of a general communication tool, in cooperation with the Electronic Invoicing module, it allows to provide fully paperless invoicing to customers, which is also recognized by state control authorities.

This module is built separately and does not interfere with other modules.

> [!NOTE]
> The Spooler works only if it is enabled on the **Spooler Setup** page (the **Enabled** field). Otherwise, the functions of the buffers and agents show an error that the Spooler is not active. This applies, for example, to changing agents and tasks (including their type, interaction method and start type), starting and stopping agents, showing and exporting documents of the buffers, the **Run Task**, **Expire**, **Move to Archive**, **Insert Task** and **Export Document** actions on the OUT Buffer, and inserting and archiving of entries by the Spooler. The setup is described in [Spooler - Setup](spooler-setup.md).

## Opening the Spooler pages

The Spooler pages are available using the search (choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon and enter the page name), and also from the **ARICOMA Modules** role center, in the **Spooler** group:

- **IN Buffer**, **OUT Buffer** and **Spooler Monitor**,
- **Setup** - Spooler Setup, Spooler Agents, Spooler Tasks, Spooler Credentials, Destination Systems and Exchange Mailboxes,
- **Archive** - Spooler Log Entries, Archived IN Buffer and Archived OUT Buffer.

## IN Buffer and OUT Buffer

The main part of the spooler are two tables in which individual records of communication, including files, are stored.

The interface of both tables is almost the same. Each record in the IN Buffer and OUT Buffer is identified by the **Entry No.** and also has a unique **Document ID** (hidden by default). The record also shows the **Process Type** and **Document Type**, the task that is being processed (the **Task ID** field) and the agent that processes it (the **Agent ID** field). The status of the record is indicated by the **Processed** field. It takes the values **No**, **Yes**, **Expirate** and **Delayed**. The value **Delayed** means that the entry was postponed (for example because of a rename, a commit or an error). Delayed entries are not processed automatically by any agent, but you can process them manually using **Run Task** - which also helps to debug the problem.

Other fields (most of them hidden by default, you can add them using personalization):

- **Source System ID** - where the record comes from (in the IN Buffer it is always shown), **Destination System ID** - where the record goes to, and **Response System ID**.
- **Response to Document ID** - the record this record is a response to.
- **No. of Errors**, **Last Error Date** and **Error Message** - the processing errors of the record.
- **Receiving Date** (IN Buffer) or **Insert Date** (OUT Buffer), **Create Date**, **Processing start Date**, **Processing Date** and **Processing Time**.
- **Expire Date** and **Expire ID** - when and by whom the record was expired. **Insert ID** - who inserted the record.
- **Non XML**, **Document Size**, **Source Host** (IN Buffer) and **Interaction Parametr** (OUT Buffer).
- **Replace Entry No.** - the record that this record replaces (see [Manually insert a task](#manually-insert-a-task-into-the-in-or-out-buffer)).
- **Comment**.

If the communication is an e-mail, the buffer lines also show the **Subject**, **Recipients**, **CC Recipients** (and **BCC Recipients** in the OUT Buffer), the **File Name** of the attachment and the **Attachment No.**. Use **Show Attachment** to open the attachment (IN Buffer).

### Searching and marking records

Both buffers have the **Searching** section at the top of the page:

- **Find Text in Document** is the text that is searched for in the content of the documents. Enter the text and use the actions in the **Find** group: **Find All**, **Find First**, **Find Previous**, **Find Next** and **Find Last** (shortcuts F5, F1, F2, F3 and F4).
- **Maximum number of records** limits the number of records that are searched.
- The found records can be marked using **Mark** and shown using **Marked only**.

### Not sending OUT Buffer entry

When sending documents from the OUT Buffer, the OUT Agent tries to keep the sending sequence as follows:

- If an entry fails to be sent, no other entries heading to the same destination will be sent in that run. The destination is determined by the **Destination System ID** and the **Interaction Parametr** of the entry, regardless of the task. The **Interaction Parametr** is taken from the OUT Buffer entry; if it is empty, the parameter from the task destination is used.
- Entries that have **Dont force sending order** set are not part of this calculation. The value is taken from the **Dont force sending order** field of the spooler task.

Holding the sending sequence in a spooler has 2 basic reasons:

1. It keeps the sequence of documents to be sent.
1. It saves time for the application server in case of a malfunction of the connection - if it is necessary to send a larger number of documents to one place (for example, one URL) and the connection is not working, the attempt to send may take several seconds and it is undesirable for this attempt to be repeated with each item - in extreme cases it can stop the Application Server for several hours.

It is a good idea to use **Dont force sending order** on the task only after careful consideration, for example for sending e-mails.

### Communication of IN and OUT Buffer

To view the communication tasks between the OUT Buffer and the IN Buffer, proceed as follows:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **IN Buffer** and then choose the related link.
1. The **IN Buffer** page opens. In the **Entry** group, you will find the following functions:
   - **Electronic Documents Entries**
   - **OUT Buffer - Response**
   - **OUT Buffer - Response (incl. Archive)**
   - **OUT Buffer - Query**
   - **OUT Buffer - Query (incl. Archive)**
1. For the OUT Buffer, the options are similar - the **Entry** group contains **Electronic Documents Entries**, **Additional Documents**, **IN Buffer - Response**, **IN Buffer - Response (incl. Archive)**, **IN Buffer - Query** and **IN Buffer - Query (incl. Archive)**.
1. The displayed rows are sorted by **Entry No.**. The key on the **Document ID** is used for finding related entries and for tasks with an immediate response.

#### Electronic Documents Entries

The **Electronic Documents Entries** page shows the electronic documents (for example invoices) that are linked to the buffer entry. For each entry it shows the **Entry Type**, **Buffer Entry No.**, **Source Type**, **Document Type**, **Source No.**, **Document No.**, **Posting Date**, **Document Date**, **Registration No.**, **VAT Registration No.**, the address of the partner (**Address**, **Address 2**, **City**, **Post Code**), **Amount** and **Amount incl. VAT**. Use **Show Document from Buffer** to display the document of the selected line.

#### Additional Documents

In the OUT Buffer, use **Additional Documents** to see the additional documents (attachments) of the entry. They are additional documents to the one document (blob) of the entry and should be processed together with it, for example as multiple attachments of one e-mail. Customer-specific modifications may handle them differently. The **OUT Buffer Documents** page shows the **Document Name**; use **Show** to display the document and **Export Document** to save it.

### Export a communication document

It is possible to export a document from the IN Buffer, OUT Buffer and their archives. To export a document, follow these steps:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **OUT Buffer** and then choose the related link.
1. The **OUT Buffer** page opens, where you can use the **Export Document** function in the **Functions** group. The document is saved to a file.

### Functions on buffer records

In the **Functions** group of the **IN Buffer** and **OUT Buffer** pages, you will find the following functions. **Expire** and **Move to Archive** work with all selected records:

- **Run Task** (shortcut F9) runs the task manually. It is available for records with **Processed** = **No** or **Delayed** (see [Raw record](#raw-record)).
- **Expire** expires the selected records after a confirmation. You can enter a comment. It is available only for records with **Processed** = **No**. The expired record gets **Processed** = **Expirate** and the date and user of the expiration are recorded.
- **Change Comment** changes the comment of the record.
- **Move to Archive** moves the selected records to the archive after a confirmation.
- **Insert Task** inserts a new record to the buffer (see [Manually insert a task](#manually-insert-a-task-into-the-in-or-out-buffer)).
- **Update Task** (IN Buffer and OUT Buffer) finds the task for the selected records again according to the **Process Type** and **Document Type**. It is not intended for regular use. It is a tool for changing the task of entries, for example after correcting a wrong setup of the spooler tasks (the entries took wrong tasks and the correct ones must be set).
- **Export Document** exports the document of the record.

### Raw record

If the given record is in the state **Processed** = **No** (or **Delayed**), it is possible to run the task manually from the form, in both the IN Buffer and the OUT Buffer.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **IN Buffer** (or **OUT Buffer**) and then choose the related link.
1. The page opens, where you can use the **Run Task** function.

The program then allows you to view an error due to which the task did not process. The errors of the processing are also available in the **Error Message** field of the record and on the **Spooler Log Entries** page (see [Spooler log](#spooler-log)). If the task did not process after manual execution, there may be a problem with the application server (e.g. user rights).

### Manually insert a task into the IN or OUT Buffer

To insert a task into the IN or OUT Buffer, do the following:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **IN Buffer** (or **OUT Buffer**) and then choose the related link.
1. The page opens, where you select the **Actions** section, then **Functions**, and finally the **Insert Task** function.
1. On the **Insert In Buffer** (**Insert Out Buffer**) page, fill in the following fields as needed:
   - **Document** where the document of the task is selected. If a spooler task is found according to the document header, the data in the form is automatically set, e.g. **Task ID**, **Agent ID**, **Process Type**, **Document Type**. If not, it must be set manually.
   - **Non XML** informs whether the document is not XML.
   - **Replace Entry No.** is the number of the record that is replaced by the new one. It is filled in automatically if you insert the task from a record with **Processed** = **Expirate**; in that case the **Task ID**, **Priority**, **Agent ID**, **Process Type** and **Source System ID** are copied from that record.
   - **Task ID**, **Agent ID**, **Process Type** and **Document Type** determine how the record will be processed.
   - **Source System ID** and **Destination System ID** determine where the record comes from and where it goes to.
   - The **Priority** field determines the order of processing.
   - **Comment** is a free text note of the record.

## Spooler log

The **Spooler Log Entries** page shows the history of the Spooler agents and is the main place for troubleshooting. To open it:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Spooler Log Entries** and then choose the related link.
1. The page shows the entries with these fields: **Agent Type**, **Agent ID**, **Entry Type**, **Buffer Entry No.**, **Date and Time**, **Error**, **Description**, **Error Text**, **Error Code**, **Server Instance ID**, **Session ID**, **Server Instance Name**, **Server Computer Name**, **User ID**, **Client Type** and **Client Computer Name**.
1. The **Entry Type** is one of:
   - **Start** - the agent was started.
   - **Stop** - the agent was stopped.
   - **Process** - a tick of the agent.
   - **Pause** - the agent was paused.
   - **Restart** - the agent was restarted.
   - **Long Run Time** - the processing took too long.
   - **Long Waiting Time** - the delay between the ticks was too long.
   - **Error** - a processing error.
1. For the entries with an error, use **Show Error** to display the error.

What is logged is determined by the **Log** fields of the agents and tasks, and by the **Log Run Time Greater Than (s)** and **Log Wait Time Greater Than (s)** fields of the agents. The setting on the agent is applied first; if it is **By Task**, the setting on the task is used instead. The log is used to monitor the Spooler run or to look for problems. See [Spooler - Setup](spooler-setup.md).

## Monitoring the agents

The **Spooler Monitor** page shows the running Spooler agents and the Spooler Agent Starter: the server instance and session, the type, agent, company, status, first and last heartbeat, the user the agent runs under, the client type and whether the agent is scheduled. It often happens that the server instance is restarted while an agent is running and its line stays in the monitor. If there is no live session for the line, it is marked as crashed after some time. Use **Delete Crashes** to remove the lines of the crashed agents. You can also start (**Run Spooler Agent**) and stop (**Stop Spooler Agent**) the agent from the page. The **Global Spooler Agents** page shows the agents of all companies in one list.

## Archive - IN and OUT Buffer

To view the IN or OUT Buffer archive items, do the following:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Archived IN Buffer** (or **Archived OUT Buffer**) and then choose the related link.
1. The archive pages have the same searching, marking and **Entry** functions as the buffers. In the **Functions** group, you can **Export Document**, **Change Comment** and, in the **Archived IN Buffer**, **Show Attachment**.
1. To return the selected records from the archive to the buffer, use **Move to IN Buffer** (or **Move to OUT Buffer**). The system asks for a confirmation first. There are no collisions of the **Entry No.** - it is an auto-increment value in the buffer and it is carried over to the archive and back.

An entry will be moved to the archive automatically during processing if this is set in the spooler task (**Dont Archive on Process**, **Dont Archive on Expirate**) or in the spooler settings (**Archive IN Buffer on Process** and **Archive IN Buffer on Expirate**, **Archive OUT Buffer on Process** and **Archive OUT Buffer on Expirate**). The settings on the task take precedence.

Items can also be moved to the archive manually from the **IN Buffer** or **OUT Buffer** page using the **Move to Archive** function.

Another way to get items into the archive is using the reports **Move IN Buffer to Archive** and **Move OUT Buffer to Archive**. In the report request page, set the **Older Than** option - the report moves the entries older than the specified period.

## Permissions

To work with the Spooler (buffers, archives, logs), assign the permission set **Aricoma Spooler Usage** to the user. To set up the Spooler, assign **Aricoma Spooler Setup**. See [Spooler - Setup](spooler-setup.md).

## See also
[Spooler - Setup](spooler-setup.md)
[Productivity Pack](productivity-pack.md)  
[ARICOMA Solutions](solutions.md)
