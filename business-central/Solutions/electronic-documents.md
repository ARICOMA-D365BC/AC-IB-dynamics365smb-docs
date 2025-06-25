---
title: ARICOMA SOLUTIONS - Odesílání elektronických dokladů | Microsoft Docs
description: Electronic_documents
author: kunes
ms.service: dynamics365-business-central
ms.topic: article
ms.devlang: na
ms.tgt_pltfrm: na
ms.workload: na
ms.search.keywords: Czech, Electronic documents, additional functions
ms.author: v-makune
---
# Electronic Documents Sending
> Update 20.06.2023

The **Electronic Documents Sending module** is used to automate the modern paperless exchange of (not only) tax documents with a customer or supplier. The functionality significantly extends the possibilities provided by Business Central in several areas.

First and foremost, it is an improved user experience. The user always knows how and in what format the document will be sent to the partner and subsequently also when this occurred. He can even adjust these parameters on specific documents according to his current needs or just make an additional resend. 

The extension of supported documents, especially reminders and also purchase orders, is also essential. This covers the entire business process.

Another area of improvement is the communication formats. The functionality extends the standard [Document sending ](https://learn.microsoft.com/en-us/dynamics365/business-central/sales-how-to-send-electronic-documents) in D365 Business Central by adding its Czech equivalent ISDOC and also a unified XML format in addition to the PEPPOL format.

The ISDOC format is based on the UBL (Universal Business Language) standard and supplements it with Czech specifics. Technically, it is an XML format signed with an electronic signature according to the XML Signature standard. To verify the validity and integrity of the ISDOC document, the [ISDOC Reader](http://www.isdoc.org/), application is used, which also allows you to view or print the document. There is also a version with attachments (delivery notes, certificates, etc.), the resulting file is then in ISDOCX format (zip file).

The XML format supplied with the module can be used for the exchange of documents between companies using the module. Similarly to the ISDOC format, electronic attachments can be included. For the user display of the XML document (structured data usable for automatic exports to information systems), XSD templates can be defined that transform the XML data into a visual HTML document.

Last but not least, the functionality extends (in combination with other addons from AUTOCONT) the possibilities of sending documents. In case of a requirement for logged communication, the [Spooler](https://www.aricoma.com/docs/en-us/dynamics365/business-central/ProductivityPack/spooler.html) addon can be used.

The module also includes support for sending emails in connection with customer processes. A typical example is notifying customers about the status of their order. However, a programmatic modification is required in the form of a function call, which is described in the [module settings](https://www.aricoma.com/docs/en-us/dynamics365/business-central/ProductivityPack/electronic-documents-setup.html).

## BC OnPrem only
In cooperation with the [Data boxes](https://www.aricoma.com/docs/en-us/dynamics365/business-central/ProductivityPack/data-boxes.html) module, documents can also be sent via this communication channel. Data boxes work on a similar principle to a regular e-mail box, but the technical solution itself ensures the trustworthiness of the delivery of data messages, each one being provided with an electronic mark (e-stamp) and a time stamp (qualified time stamp). For more information, visit the [official website](https://info.mojedatovaschranka.cz/).

If you prefer the PDF format, the module allows you to electronically sign or even e-time stamp these documents.

## Usage

The following text describes the most common use cases for the Electronic Documents Sending functionality.

### Posting a sales document with immediate dispatch with one Sending Profile for the customer
In this case, this is the standard BC functionality where the user uses the Post and Send function for posting. Each customer has a document posting profile set on his/her card, or the profile marked as default is used.

> [!NOTE]
> The "send" result varies depending on the Document Sending Profiles settings (see the official documentation Document Sending Profile Settings).[Document Sending Profiles settings](https://learn.microsoft.com/en-us/dynamics365/business-central/sales-how-setup-document-send-profiles)).


### Posting a sales document with immediate posting with multiple Sending Profiles for a customer

This is a situation where multiple Document Sending Profiles are required for a customer, i.e. different types of documents are to be sent in different ways. For this purpose, there is a Partner E-document Settings on the customer's card, where you can assign a different Document Sending Profile to a specific Usage than the default one specified on the customer's card.

As in the previous scenario, the Document Sending Profile on a specific document can be checked or changed on the Electronic Documents tab before using the Post and Send function.


> [!NOTE]
> The Email field is on the Electronic Documents tab for better visibility, but it is the same field as on the General tab.


### Posting a sales note with postponed sending

For the correct functionality of the postponed sending, you need to have a job set up to run in the Job Queue, see [Automatic sending of documents] (https://www.aricoma.com/docs/en-us/dynamics365/business-central/ProductivityPack/electronic-documents-setup.html#automatic-sending-of-documents).

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Sales Invoices** and then choose the related link.
2.	Create a new Sales Invoice per your customer and verify that the Document Sending Profile field is populated on the Electronic Documents tab.
3.	On the Sales Invoice page, run the *Post* action.
4.	When you see information about the number of the posted invoice, select Open Invoice and verify that the *El.Document No. Sent* field on the posted invoice increases after the defined period of triggering automatic posting.


> [!NOTE]
> You can send posted sales credit notes, sales shipments, and issued reminders in the same way.


### Additional manual sending of a posted sales invoice

If you subsequently need to send in a different way than normal, this can be done on the relevant document page.
1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Posted Sales Invoices** and then choose the related link.
2.	Find the relevant document and open its tab.
3.	On the Electronic Documents tab, select the desired method in the *Document Sending Profile* field.
4.	If it is an *email*, enter the required email address (or more, separated by semicolons) in the *Email* field.
5.	On the Sales Invoice page, launch the Send function.
6.	Verify that the value in the *El.Document No.* Sent field has increased and the value in the *El.Document Last Sent Time* field has changed.


> [!NOTE]
> This works the same for sending posted sales credit notes, sales shipments, and issued reminders.

### Sending an unposted sales document
Sending sales quotes or sales order confirmations via email is often part of the sales process. These documents are enhanced with the Send function so that (similar to previous scenarios) individual customer communication settings can be used.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Sales Quotes** and then choose the related link.
2.	Create a new sales quote for the customer and verify that the Electronic Documents tab has the *Document Sending Profile* field filled in.
3.	On the Sales Quote page, run the *Send* action.
4.	Verify that the *El.Document No. Sent* field is incremented.


### Sending an unposted purchase document
Sending purchase quotes or purchase orders by e-mail is often part of the business process.
1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Purchase Orders** and then choose the related link.
2.	Create a new purchase order to a vendor and verify that the *Document Sending Profile* field is filled in on the Electronic Documents tab.
3.	On the Purchase Order page, run the *Send* action.
4.	Verify that the *El.Document No. Sent* field is incremented.



### To change the shipping preset in subsequent sales documents

The following scenario describes a situation where a user decides to change the sending of documents that have yet to be created during the progress of a business case. The prerequisite is the existence of the settings for sending by document type (see Profiles for sending documents by document type), specifically for the customer sending a quotation, an order and an invoice (or even a delivery note).

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Sales Quotes** and then choose the related link.
2.	Create a new sales quote for the customer for whom you have set up different sending by document types.
3.	On the Electronic Documents tab, verify that the Electronic Documents Advanced Setup displays the parameters for sending subsequent documents according to the settings for the customer.
4.	On the line using Sales Order, change the value in the Document Sending Profile field.
5.	On the line using Sales Invoice, change the value in the Document Sending Profile field (or Email).
6.	On the Sales Quote page, run the *Create Order* action.
7.	When the information about the created order is displayed, select to open it. Verify that the Document Sending Profile field contains the value entered in step 4 and that the change from step 5 has been carried over.
8.	On the Sales Order page, run the Post action.
9.	When the posted invoice information is displayed, select Open Invoice and verify that the *Document Sending Profile and Email* fields contain the values entered in step 5.

![Sending electronic documents](media/electronic_documents.png)


## See Also

[Electronic Documents Sending - Setup](electronic-documents-setup.md)  
[Productivity Pack](productivity-pack.md)
