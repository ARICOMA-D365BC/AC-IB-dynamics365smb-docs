---
title: ARICOMA SOLUTIONS - Odesílání elektronických dokladů | Microsoft Docs
description: Electronic documents Setup
author: kunes
ms.service: dynamics365-business-central
ms.topic: article
ms.devlang: na
ms.tgt_pltfrm: na
ms.workload: na
ms.search.keywords: Czech, Electronic documents setup, additional functions
ms.author: v-makune
---
# Electronic Documents Sending - Settings
> Update 20.06.2023

Before you can take advantage of the enhanced capabilities of sending electronic documents, you must configure the rules and values that define the company's requirements in this area.

## Document sending profiles
If your company uses more than one way to send documents to customers or vendors, it is advisable to define document sending profiles for all of them. You can define one method as the default and then assign specific ones to selected partners.

![Document sending profiles](media/elect_dom_set1.png)

For more information, see [Set Up Document Sending Profile](https://docs.microsoft.com/en-us/dynamics365/business-central/sales-how-setup-document-send-profiles).

> [!NOTE]
> You must create as many sending profiles as the number of different sending combinations the company will use (e.g., if you are sending invoices via email in XML or PEPPOL format, you must have 2 sending profiles).

> [!WARNING]
> This module is not adapted to use the „Electronic Document“ value in the Email Attachment field. Instead, you must use the value „Through Document Exchange Service“ in the Electronic document field (see also ISDOC and XML format settings).

## Document Sending Profiles by Document Type
### Default settings:
1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Electronic Document Setup** and then choose the related link.
2.	On the Electronic Document Setup page, run the *Documents Partner Setup* action.
3.	On the row in the Usage column, select the document for which you want to set the default sending method (*Document Sending Profile column*).


### Specific settings:
1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Customers** and then choose the related link.
2.	Locate the appropriate customer and open their tab.
3.	On the customer's card page, run the *Electronic Documents Partner Setup* action.
4.	On the row in the Usage column, select the document for which you want to set a specific sending method for the customer (*Document Sending Profile column*) and other parameters (email, etc.).


> [!NOTE]
> If necessary, you can also define different parameters for individual Ship-to Addresses. Similar functionality is available on the Supplier tab and on the Order Addresses tab.

## Automatic sending of documents
1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Customers** and then choose the related link.
2.	Turn on field **Auto.Send Documents**.
3.	Close the page.

The function creates Job Queue entries for workdays with an interval of 30 minutes. If necessary, you can modify the parameters.

## Sending logging

If you turn on logging of Send activities, you will find each use of the Send function on documents in the Activity Log.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Electronic Document Setup** and then choose the related link.
2.	Turn on field *Use Activity Log*.
3.	Close the page.

## ISDOC and XML format settings

To set up the ISDOC and XML formats correctly, use the assisted setup to add the basic settings to the Electronic Document Formats list for Sales Invoice and Sales Credit Note documents. You can create your own exports and adjust the settings within the customizations.

Formats with the code "AC_ISDOC_6" (or "AC_XML") are for use on document sending profiles where the Email field is set as the delivery method for the electronic document (Email attachment = PDF & Electronic Document).

In contrast, formats with a code ending in SPOOLER are for use on document sending profiles where the Electronic Document field is set as the delivery method.

Note: The wizard will also add settings for sending PDF using the Spooler functionality ("AC_PDF_SPOOLER").

## ISDOC Settings - Payment Methods
To use the ISDOC format, it is necessary to set the mapping of the payment methods used in BC to the payment methods defined in the ISDOC format by the "PaymentMeansCodeType" element.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Payment Methods** and then choose the related link.
2.	On the Payment Methods page, navigate to the row corresponding to the cash payment.
3.	Enter 10 in the ISDOC Method Code column.
4.	Repeat for the other payment methods used (42 - Bank transfer, 48 - Card payment,... see more at [isdoc.cz/6.0.2/xsd/isdoc-invoice-6.0.2.xsd](https://isdoc.cz/6.0.2/xsd/isdoc-invoice-6.0.2.xsd))

## General emails - settings
### Basic setup
1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **General Email Sending Setup List** , and then choose the related link.
2.	On the General Email Sending Setup List page, run the *New* action.
3.	On the General Email Sending Setup card, select *Type* and *Language Code*, which are the determining combinations for finding the correct email template. A blank language code is valid for all languages unless a setting for a specific code is found.
4.	In the *Email Scenario* field, select the method of sending the email.
5.	In the *Subject* field, you can define the subject text of the email (optional).
6.	In *CC Emails* and *BCC Emails*, enter the recipients' emails to be sent beyond the defined recipients passed in the function call (not required).
7.	In the *Body Table ID* field, select the table from whose data the actual email will be created.
8.	In the *Body Report ID* field, select the report that defines the body of the email. 
9.	Then, in the *Body Layout Code* field, select the specific layout you want to use to create the email (e.g., a different language).
10. When the settings are complete, turn on the *Active* flag and close the card.

> [!NOTE]
> For the Status Management addon, there is an Action (codeunit 52067906 SMActionSendEMail_ach) that you can use to trigger the creation and sending of a generic email when the state changes.
> Description of the action parameters: 1 = Type, 2 = Email, 3 = Language Code (Optional), 4 = Subject (Optional), 5 = CC Emails (Optional), 6 = BCC Emails (Optional)

### E-mail attachments
You can also have attachments inserted into the email by running the report over any table. However, when calling the function, you must pass a link to the appropriate table record and the functionality will find all attachment settings for the same table and create a PDF attachment. 
To set it up, do the following:
1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **General Email Sending Setup List** , and then choose the related link.
2. On the General Email Sending Setup List page,  run the *Edit* action on the selected row.
3. On the General Email Sending Setup card, create the new line on Gen. Email Sending Setup Attachments tab.
4. In the *Attachment Name* field, enter the name of the file you want it to have when you insert it into the email. You can take a value from any field in the table, e.g. the definition "Order No. [3].pdf" will name the file "Order No. 101123.pdf".
5. In the *Attachment table number* field, select the table from whose data the attachment is to be created.
6. In the *Attachment Report No.* field, select the report to create the email attachment.
7. If you need to set specific report parameters, run the Fill Parameters action and define them in the open report page.
8. Close the card.

### Example of a function to create an email
The following code illustrates the function call that first creates the email, then passes the function call to create attachments over the record from which the email itself is created. The next function creates the email session. The last function is to queue the email for sending.
{
...
    EMailManagement.InitEMail(EmailTypeEnum, LanguageCode, SrcRecordRef, Recipients, Subject, CC, BCC);
    EMailManagement.AddEMailAttachments(SrcRecordRef);
    IF AddEPrimaryEmailRelation THEN
        EMailManagement.AddEMailPrimaryRelation(SrcRecordRef);
    IF AddRelatedEmailRelation THEN
        EMailManagement.AddEMailRelatedRelation(SrcRecordRef);
    EMailManagement.EnqueueEMail();
...
}

## Optional - Sending via Spooler
If you have the Spooler module enabled, you can send documents through it. It is not recommended for sending emails, but rather to cover customer requests with the need for logged communication.

You must set the default process type designation for the Sending Electronic Documents module.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Electronic Document Setup** and then choose the related link.
2.	On the Electronic Document Setup page, fill in **Spooler Process Type**.
3.	Close the page.


Then, for each customer, you need to set specific parameters for sending via Spooler.

### Document delivery parameters

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Customers** and then choose the related link.
2.	Open the relevant customer card, and then choose the Electronic Documents Partner Setup action.
3.	Fill in Spooler Process Type, Spooler Destination System and Spooler Interaction Parameter for required Usage and relevant Document Sending Profile.
4.	Close the page.


For more information, see the [Spooler](https://muj.autocont.cz/docs/en-us/dynamics365/business-central/ProductivityPack/spooler.html).

## OnPrem - Sending via Data Box

**The described functionality is only available in the OnPrem version!**


If you have purchased the Data Mailbox module, you can also send documents via this communication channel. The advantage of such communication is that the reliability of the delivery of data messages is ensured.

In order to use the Data Mailbox for sending documents, you need to define which Outgoing Mail Template the messages should be sent through.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Electronic Document Setup** and then choose the related link.
2.	In the **Databox Mail Template** field, choose the template to use.
3.	Close the page.

> [!Important]
> You must also set the Electronic Document Formats. Then create your own formats analogous to the settings for Spooler, for Data Boxes you need to change the value in the Delivery ID field to 52067927.

If the single Data Box ID entered on the Customer tab is not sufficient, it is possible to set Data Mailbox IDs specific to different documents:
1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Customers** and then choose the related link.
2.	Find the relevant customer and open their card.
3.	On the Customer Card page, run the Electronic Documents Partner Setup action.
4.	On the line with the desired combination of Usage and Document Sending Profile, enter the **Data Box ID**.



## OnPrem - Electronic signing of documents
**The described functionality is only available in the OnPrem version!!**

It is recommended to use the Setup Wizard to make the necessary settings for signing PDF documents.

There are 3 steps:

### Installing a certificate for signing

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Electronic Document Setup** and then choose the related link.
2.	On the Electronic Document Setup page, choose the Import action in Pfx Certificate SubMenu.
3.	Select the Pfx file, and open it.
4.	On the Electronic Document Setup page, fill in Pfx Certificate password.
5.	Close the page.


## Installing PDFXchange

The PDFXchange application must be installed on the server on which you are running the middle tier. A license for the application for background use is included with the addon. However, if you want to use the application other than through Business Central, you must purchase a license.

The installation files can be found on the manufacturer's website at  https://www.pdfxchange.cz/download, , and you can use any of the available editions (Editor, Standard or PRO).

## Time stamp settings

This is an optional step if you use a paid service from such a service provider. If you want to adjust the basic settings manually, open the Electronic Document Settings.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Electronic Document Setup** and then choose the related link.
2.	Enter an URL address of your timestamp service provider in the TimeStamp Server URL field.
3.	Enter an account name given by your service provider in the TimeStamp Server Account field.
4.	Enter a password for the timestamp account in the TimeStamp Server password field.
5.	Close the page.



## Viz také

[Odesílání elektronických dokladů](electronic-documents.md)  
[Productivity Pack](productivity-pack.md)
