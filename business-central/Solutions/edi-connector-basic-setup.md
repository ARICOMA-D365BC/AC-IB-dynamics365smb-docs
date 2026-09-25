---
title: EDI Connector Setup
description: EDI Connector Setup
author: kunes
ms.service: dynamics365-business-central
ms.topic: article
ms.devlang: na
ms.tgt_pltfrm: na
ms.workload: na
ms.search.keywords: Czech, EDI Connector, additional functions
ms.author: v-jurxova
---
# EDI connector - Setup

The setup of the EDI connector consists of the general **EDI Setup** card, the **EDI Partners** list, the individual **EDI communication setup cards** and additional fields on customer cards, vendor cards, ship-to addresses and order addresses. The recommended order of the steps is the same as the order of the chapters below.

## EDI Setup

1. Choose the ![Lightbulb that opens the Tell Me feature](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **EDI Setup**, and then choose the related link.
2. Select the **Enabled** field. Without selecting this field, no EDI function can be run – the system reports that the EDI Connector functionality is not enabled.
3. In the **EAN** field, enter the EAN (GLN) of your own company, by which the company identifies itself in the EDI communication.
4. Fill in the other fields as required:

| Field | Description |
|---|---|
| **Archive Purchase Documents** | Specifies whether purchase documents are to be archived during EDI processing. |
| **Archive Sales Documents** | Specifies whether sales documents are to be archived during EDI processing. |
| **VAT Breakpoint** | The value by which the standard and the reduced VAT rate are distinguished when a received message is processed. |
| **Default VAT %** | The default standard VAT rate used when a message is processed. |
| **Default low VAT %** | The default reduced VAT rate used when a message is processed. |
| **Allow the same EDI settings for multiple customers** | Makes it possible to leave the **Source No.** field blank on the EDI communication setup card. Such a setup is then used for all customers of the given EDI partner that do not have their own specific setup. |

## EDI Partners

An EDI partner is an umbrella designation of the counterparty, under which the individual EDI communication setup cards are grouped.

1. Choose the ![Lightbulb that opens the Tell Me feature](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **EDI Partners**, and then choose the related link.
2. Choose the **New** action and fill in the **Code** and **Description** fields.

## Setting up the EDI communication setup cards

The EDI communication setup card is the core of the whole setup. It determines which document is processed for which partner, by which object and in which direction. Open it from the **EDI Communication Setup List** page (the **New** action, or by opening an existing line).

The record key is made up of the combination of the **EDI Partner Code**, **Source Type**, **Source No.**, **Ship-to / Order Address Code**, **Document Source Type**, **Document Source Subtype**, **Direction** and **Doc Type** fields. For one partner, a separate card is therefore created for each message type.

### Identification of the partner and the document

| Field | Description |
|---|---|
| **EDI Partner Code** | Specifies the partner code. A mandatory field, a reference to the EDI Partners list. |
| **Source Type** | *Customer*, *Vendor* or *Shipping Agent*. Changing the value clears the source number and pre-fills the corresponding document source type. |
| **Source No.** | The specific customer, vendor or shipping agent. The field can only be left blank for the *Customer* source type, and only if **Allow the same EDI settings for multiple customers** is selected in the EDI Setup. |
| **Ship-to / Order Address Code** | Makes it possible to distinguish the setup for individual ship-to addresses (for a customer) or order addresses (for a vendor). A blank value applies to all addresses that do not have their own card. |
| **Description** | A free description of the setup. |
| **EAN** | The EAN (GLN) of the recipient or the sender of the given communication. Among other things, it is used when an incoming message from the Spooler is matched. |
| **Document Source Type** | The source table: 36 Sales Header, 38 Purchase Header, 110 Sales Shipment Header, 112 Sales Invoice Header, 114 Sales Cr. Memo Header, 5740 Transfer Header. |
| **Document Source Subtype** | The document type within the source table (Quote, Order, Invoice, Credit Memo, Blanket Order, Return Order). |
| **Direction** | *Export*, *Confirmed Export* or *Import*. When document source type 36 is selected, *Import* is set; for the other types, *Export*. |
| **Doc Type** | An optional distinction of the message type if several formats are used for the same document. |

> [!NOTE]
> With the **Confirmed Export** option, only documents with the **Confirmed for EDI Export** field selected are included in the export.

### Processing object and output file

| Field | Description |
|---|---|
| **Object Type** | *Report*, *Codeunit* or *XMLPort*. The default value is Report. |
| **Object ID** | The object that creates or reads the message itself. The objects of the specific provider are entered here. |
| **Object Caption** | A field with the name of the object. |
| **File Path And Name** | The path and the mask of the file name. The following placeholders can be used in the mask: '%1' – a number from the number series, '%2' – today's date in the YYYY-MM-DD format, '%3' – the current date and time. |
| **File Name No. Series** | Mandatory if the '%1' placeholder is used in the mask. |
| **Only Numbers in Doc. No.** | Only digits are transferred from the document number to the message. |
| **Add to Doc. No.** | A string added to the document number in the message. |
| **Only Numbers in Ship. No.** | Only digits are transferred from the shipment number to the message. |

### Posting and activation

| Field | Description |
|---|---|
| **No. Series** | The number series for documents created by EDI processing. |
| **Create New Posting No.** | When a sales (36) or purchase (38) document is exported, a new posting number from the specified number series is assigned to the document; if the series is not filled in, the number series from the document is used. |
| **Automaticaly Post** | The processing is finished by posting the document automatically. |
| **Don't Wait for Confirmation** | The confirmation message of the counterparty is not waited for. |
| **Active** | Inactive cards are skipped both during import and export. The default value is selected. |

### Communication through the Spooler

| Field | Description |
|---|---|
| **Communicate by Spooler** | The message is not passed by a file, but through the IN/OUT buffer of the Spooler. |
| **Spooler Task ID** | The Spooler task that transfers the message. |
| **Destination System ID** | The Spooler destination system (the provider). |

### Check Lines

In the lower part of the card there is the **Check Lines** part, which makes it possible to condition the export of a document on its EDI status. For each line, fill in:

- **Check Type** – *Invoice Export*, *Invoice Posting* or *Invoice Posting By Date*,
- **Status Filter** – a filter on the Status field of the EDI entry (for example, so that the invoice can only be exported if the document has the DESADV status),
- **Data Acceptance Filter** – a filter on the Data Acceptance field of the EDI entry (*EDI Provider*, *Market*).

The check lines are used when the **Confirmed for EDI Export** field on the sales document is validated. Deleting the EDI communication setup card also deletes its check lines.

The card also contains the **Previous Status Filter** field, which serves the same purpose at the level of the whole card.

### XSL Template

The navigation of the card contains the **Setup → XSL Template** group with the **Import**, **Export**, **Show** and **Delete** actions. The template is stored with the card as an appendix and is used by objects that generate the message from the document data by transformation.

## Setting up customers for EDI

The following fields are set up on the customer card (and in the customer list):

| Field | Description |
|---|---|
| **EAN for EDI** | The EAN (GLN) of the customer for the EDI communication. |
| **Invoice Place EAN** | The EAN of the customer to whom the EDI invoice is sent. |
| **EAN Common with Customer No.** | A reference to the customer with whom the EAN is shared. |
| **EDI Partner Code** | The assignment of the customer to an EDI partner. The field is placed after the GLN field. |

The **EDI Partner Code** field is essential – when a sales shipment, an invoice or a credit memo is posted, the system creates EDI entries only for customers that have this field filled in, and uses it to find the corresponding EDI communication setup card.

> [!NOTE]
> If the customer has the standard **GLN** field filled in, it is used with priority; only if it is not filled in does the system use the **EAN for EDI** field.

## Ship-to addresses for EDI

On the **Ship-to Address** card, the **Electronic Documents** group contains the **EAN for EDI** field, in which the EAN (GLN) of the specific delivery point is entered.

The ship-to address code is entered on the EDI communication setup card in the **Ship-to / Order Address Code** field. When looking up the setup, the system first searches for a card for the specific ship-to address of the document, and only if it does not exist (or is not active) does it use the card with a blank address code.

## Setting up items for EDI

The EDI connector module does not add any fields of its own to the item card. The identification of items in the EDI message is handled by the standard Business Central tools and by the fields on the document lines:

**Item References** – for each EAN under which the partner orders the item, a record with the **Reference Type** *Bar Code* is created on the item card (Related → Item → Item References). Based on this record, the conversion objects look up the item number when a message is imported.

## Setting up vendors for EDI

The vendor card contains the **EDI Framework** group with the following fields:

| Field | Description |
|---|---|
| **EAN for EDI** | The EAN (GLN) of the vendor for the EDI communication. |
| **Invoice Place EAN** | The EAN of the vendor from whom the EDI invoice is received. |

When the **EDI Document** action is run on a purchase order, the system checks whether the vendor has the standard **GLN** field filled in; if not, it uses **EAN for EDI**. If neither is filled in, the function ends with an error on the **EAN for EDI** field.

## Setting up order addresses for EDI

Vendor order addresses are used in the EDI setup in the same way as ship-to addresses for customers – they are entered on the EDI communication setup card in the **Ship-to / Order Address Code** field when the source type is *Vendor*.

Both the **Export EDI Purchase Documents** report and the **EDI Document** function on the purchase order look up the EDI communication setup card by the order address on the purchase header; if they do not find a card for the specific address, they use the card with a blank address code.

## Reports for import and export

The communication itself is started by the following reports (also available from the Role Center in the **EDI Framework → Reports** group):

| Report | Description |
|---|---|
| **Import EDI Documents** | Processes all active cards with the *Import* direction that do not communicate through the Spooler. |
| **Export EDI Invoice Documents** | Export of posted sales invoices (document source type 112). |
| **Export EDI Credit Memo Documents** | Export of posted sales credit memos (114). |
| **Export EDI Shipment Documents** | Export of posted sales shipments (110). |
| **Export EDI Purchase Documents** | Export of released purchase orders (38). |
| **Export EDI Transfer Documents** | Export of transfer headers (5740). |

All the reports have the **Error Handling** field on the request page, with the *Ignore* and *Stop at first* options. The *Ignore* option makes it possible to process the remaining documents even if one of them ends with an error.

The reports can be scheduled in the job queue; for communication through the Spooler, the import of messages from the IN Buffer is started by a Spooler agent.

## Setting up the communication with the EDI provider

If the transfer is handled through the Spooler, the following must also be set up:

1. A **Spooler Task** (of the *In* or *Out* type) with the interaction method filled in – *HTTP*, *E-Mail*, *Web Service*, *Spooler API*, *Spooler SOAP Web Service* or *Spooler OData Web Service* – and the processing codeunit.
2. The **Destination System** to which the task sends.
3. The **Spooler Agent ID** that runs the task at a regular interval.
4. On the EDI communication setup card, select **Communicate by Spooler** and fill in the **Spooler Task ID** and the **Destination System ID**.

**See also**

[EDI connector](edi-connector-basic.md)  
[Productivity Pack](productivity-pack.md)
