---
title: EDI Connector
description: EDI Connector
author: kunes
ms.service: dynamics365-business-central
ms.topic: article
ms.devlang: na
ms.tgt_pltfrm: na
ms.workload: na
ms.search.keywords: Czech, EDI Connector, additional functions
ms.author: v-jurxova
---
# EDI connector

The **EDI connector** add-on module adds a framework for the electronic exchange of documents (EDI) with business partners – customers, vendors and shipping agents – to Microsoft Dynamics 365 Business Central. The module itself does not contain any specific message format; it is a general framework that, for each combination of *partner – document – communication direction*, runs the assigned object (report, codeunit or XMLport) which creates or reads the data message in the form required by the given EDI provider.

In particular, the module provides:

- a register of EDI partners and their EAN (GLN) identifiers,
- EDI communication setup cards that define what is sent, to whom, by which object and where,
- tracking of the document processing status through **EDI Entries** and **Detailed EDI Entries**, including archiving of the message itself,
- a connection to the **Spooler** module, which handles the actual transfer of messages to the provider (HTTP, web service, API, e-mail).

The EDI connector is above all about correct setup. Without a filled-in **EDI Setup** card with the **Enabled** field selected, the functions of the module cannot be run – the system reports that the EDI Connector functionality is not enabled.

## Which documents EDI supports

The module works with the following source documents (the **Document Source Type** field on the EDI communication setup card):

| Table | Document | Source Type | Usual direction |
|---|---|---|---|
| 36 | Sales Header (quote, order, invoice, credit memo, blanket order, return order) | Customer | Import |
| 38 | Purchase Header (quote, order, invoice, credit memo, blanket order, return order) | Vendor | Export |
| 110 | Sales Shipment (posted) | Customer | Export |
| 112 | Sales Invoice (posted) | Customer | Export |
| 114 | Sales Credit Memo (posted) | Customer | Export |
| 5740 | Transfer Header | Shipping Agent | Export |

The communication direction is pre-filled automatically when the document source type is selected: the sales header (36) is set to **Import**, the other documents to **Export**. The value can then be changed to **Export**, **Confirmed Export** or **Import**.

> [!NOTE]
> The **Confirmed Export** option means that only documents with the **Confirmed for EDI Export** field selected are included in the export. With the **Export** option, the filter on this field is not applied.

## Which messages arise from the communication

The processing status of a document in EDI is kept in the **Status** field on the EDI entries and corresponds to the type of message that was exchanged:

| Status | Meaning |
|---|---|
| ORDERS (Order) | Order (received from a customer or sent to a vendor) |
| DESADV (Despatch Advice) | Despatch advice (shipment note) |
| Shipped/Received | The document has been shipped or received |
| RECADV (Receiving Advice) | Receiving advice from the partner |
| DESADV canceled (Despatch Advice Canceled) | Cancellation of the despatch advice (arises when a sales shipment is undone) |
| INVOIC (Invoice) | Invoice |
| COMDIS3 (Commercial Dispute - Conditionaly) | Commercial dispute – conditionally accepted |
| COMDIS1 (Commercial Dispute - OK) | Commercial dispute – OK |
| COMDIS8 (Commercial Dispute - Refused) | Commercial dispute – refused |
| INVOIC canceled (Invoice Canceled) | Invoice cancellation |

In addition to the status, the **Data Acceptance** field is tracked on the entries, with the values *EDI Provider* and *Market*, which distinguishes at which level the message was accepted by the counterparty.

The text of the exchanged message itself is stored as an appendix of the detailed EDI entry and can be downloaded at any time with the **Export Document** action on the **Detailed EDI Entries** page.

Errors that occur during communication are logged according to the selected transfer method:

- in the **EDI Invoicing Protocol** – for invoicing messages it contains the error texts of the whole message, the error line number, the action code and description, the COMDIS message number and the message status,
- in the **Spooler Log Entries** – for messages transferred by the Spooler (connection and authentication errors, provider responses).

## EDI Entries and Detailed EDI Entries

There is exactly one **EDI Entry** for each combination of source table, subtype and document number, and it always carries the current (latest) status. A **Detailed EDI Entry** is created for each individual communication and thus forms the history of the document. In addition, the detailed entry contains the version number, the number of document no. appearances, the posting number, the external document number, the cancellation flag, the direction, the buffer entry number, the file name and the appendix with the message.

The entries are linked by the **Main EDI Entry No.** field, so you can display both the history of a single document and the history of the whole chain of linked documents (order → shipment → invoice).

## Using EDI in sales

The sales side is typically bidirectional and runs in the following sequence:

1. **Receiving the order (ORDERS).** The **Import EDI Documents** report goes through the active EDI communication setup cards with the *Import* direction and, for each of them, runs the assigned object that creates the sales order. Items are looked up by the EAN from the received message and the EAN is written to the **EDI EAN** field on the sales line. An EDI entry with the *ORDERS* status is created.
2. **Checking and processing the order.** An overview of all EDI orders is offered by the **EDI Sales List** page, where, in addition to the standard fields, the **EDI Status**, **EDI Data Acceptance**, **Advice with Error**, **Confirmed for EDI Export**, **Invoice No.**, **EDI Shipment No.** and **EDI Shipment Date** fields are also visible.
3. **Shipping and despatch advice (DESADV).** When the shipment is posted, the document is automatically marked as confirmed for EDI export and an EDI entry for the sales shipment is created. The message itself is created by the **Export EDI Shipment Documents** report. When a sales shipment line is undone, the shipment is marked with the **EDI Cancelled** flag and an entry with the *DESADV canceled* status is created; if only a part of the shipment is undone, the system notifies you with a confirmation.
4. **Invoicing (INVOIC).** When the invoice (or credit memo) is posted, an EDI entry for the posted invoice is created and the message is created by the **Export EDI Invoice Documents** report (or the **Export EDI Credit Memo Documents** report).
5. **Invoice cancellation.** The **Cancel EDI Invoice** function marks the existing detailed entries with the *INVOIC* status as cancelled, creates an entry with the *INVOIC canceled* status, clears the **Confirmed for EDI Export** and **Advice with Error** flags and releases any lock on the document.

Before a document is confirmed for EDI export, the system checks that the **EDI Shipment No.** and **EDI Shipment Date** fields are filled in and that all lines of the *Item* type have the shipped quantity equal to the ordered quantity. The check of the EDI status and of the data acceptance can be tightened further by check lines on the EDI communication setup card.

The confirmation function can also be run in a batch from the **EDI Sales List** with the **Confirm Invoice Export** action, which first releases the document and then selects **Confirmed for EDI Export**.

## Using EDI in purchases

The purchase side is typically unidirectional – the order is sent to the vendor:

1. The purchase order must be **released** first.
2. On the purchase order card, run the **EDI Document** action. The function verifies that the vendor has the **GLN** or **EAN for EDI** field filled in, finds the corresponding EDI communication setup card (by the vendor and the order address code) and creates an EDI entry with the *ORDERS* status.
3. The message itself is created by the **Export EDI Purchase Documents** report, which processes only released orders whose EDI entry has a blank status or the *ORDERS* status.
4. On the purchase order card, the communication status is visible in the **EDI Status** field.

The **EDI EAN** field is available on the purchase lines and the **Merge Lines by EDI EAN** field on the header, which makes it possible to combine several lines with the same EAN into one item of the sent message.

## Transfer orders

The Transfer Order (table 5740) with the **Confirmed for EDI Export** field and the **Export EDI Transfer Documents** report is intended for shipping agents (the *Shipping Agent* source type).

## EDI Invoicing Protocol

The **EDI Invoicing Protocol** page serves as a history log of invoicing messages. For each record you can see the order number, the customer number, the bill-to customer number, the EDI invoice number, the date and time, the invoice status, the user ID and a flag indicating whether the status was changed manually. The protocol records cannot be edited on the page.

## EDI Table Lock Entries

So that a user cannot change a document that is currently going through EDI processing, the module keeps its own **EDI Table Lock Entries**. An attempt to change a locked record ends with a message that the record cannot be changed because it is locked by another user. The check is also applied to the lines of linked documents (sales and purchase lines, service, transfer, warehouse receipt and shipment lines, journals).

## Communication with the EDI provider

The actual transfer of messages to the provider is not handled by the EDI connector itself, but by the **Spooler** module, which is part of the same application (IB-EConnect360). On the EDI communication setup card, communication through the Spooler is turned on with the **Communicate by Spooler** field and is linked to the **Spooler Task ID** and the **Destination System ID**. Incoming messages are stored in the **IN Buffer**, outgoing ones in the **OUT Buffer**.

The Spooler supports the following interaction methods: **HTTP**, **E-Mail** (including an Exchange mailbox), **Web Service**, **Spooler API**, **Spooler SOAP Web Service** and **Spooler OData Web Service**, with authentication through OAuth 2.0.

> [!NOTE]
> The EDI connector module itself does not contain any object bound to a specific provider. The provider is always added to the solution by a separate application or a set of conversion objects, which are linked in the setup by the **Object ID** field.

**See also**

[EDI connector - Setup](edi-connector-basic-setup.md)  
[Productivity Pack](productivity-pack.md)
