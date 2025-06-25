---
Title: ARICOMA SOLUTIONS - Sdílená poštovní schránka Exchange
Description: Slouží k importu příloh e-mailů z sdílené e-mailové schránky do Business Centralu, kde mohou být přílohy dále zpracovány.
Author: Ondřej.Slavík
Date: 23/03/2023
Product: dynamics365-business-central
Contentlocale: en-us
ms.search.keywords: Exchange, Shared, Mailbox, IN Buffer, Agent, E-Mail, Azure
---

Exchange Shared Mailbox
> Update: 12.04.2023

The **Exchange Shared Mailbox** solution allows email messages to be extracted from a shared mailbox to an IN Buffer where the emails can be further processed.

> [!IMPORTANT]
> **Exchange Shared Mailbox is an extension of the functionality of the Spooler addon**.

## Examples of use

- Incoming purchase invoices in PDF format that arrive in the shared mailbox are automatically filed as inbox. Alternatively:
    - Purchase Invoices are created from them in Business Central.
    - They are forwarded via Kofax's OCR web service and the invoice is filed back with the data.
- Incoming purchase invoices in XML format (e.g. EDI) that arrive in the shared mailbox are automatically filed as inbox and Purchase Invoices are created from them in Business Central.
- Incoming sales orders and inquiries with attachments that arrive in the shared mailbox are automatically filed as sales documents with attachments (published documents) in Business Central.
- Incoming catalogues in XML/XLS format that arrive in the shared mailbox are automatically processed into non-stock structures in Business Central.
- Other typical options:
    - Order confirmation
    - Shipments 




## Usage
When an email is sent to the selected shared mailbox that is set as the default for extraction, it is automatically extracted and then disappears from the inbox where it is moved to the archive. At this point, the email can be considered **extracted** and can be found in the **IN buffer**.

To find a mined email:
1. Select the ![Lightbulb icon to open the Tell Me feature](media/ui-search/search_small.png "Tell me what you want to do"), type **IN Buffer**, and then select the associated link.
2. This will list all the files uploaded in IN Buffer, and will include the attachment records from the email you just extracted.
3. The following fields contain selected information that is available for the file:

| Field Name | Description |
|--------------------|-------------------------------------------------------|
| **Task ID** | Task that will process the attachment |
| **Processed** | Indicates if the attachment has already been processed |
| **Agent ID** | The agent that performed the extraction |
| **File name** | Full name of the attachment |
| **Subject** | Subject of the email from which the attachment was extracted |
| **Recipients** | Recipients of the email from which the attachment was extracted |
| **Recipients of the copy** | CC recipients of the email from which the attachment was extracted |

4. If a task is filled in the **Task ID** field, then clicking the **Start Task** action will process the attachment and set the value of the **Processed** field to *Yes*.

For more information on using the IN Buffer itself, visit the [help page](spooler.md).


## Vizte Také
[Exchange Shared Mailbox - Setup](exchange-shared-mailboxes-setup.md)  
[IN Buffer](spooler.md)  
[Productivity Pack](productivity-pack.md)