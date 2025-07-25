---
title: SK Fiscal Printers Integration
description: SK Fiscal Printers Integration
author: RobertJelen
date: 07/31/2025
reviewer: janousek
ms.service: dynamics-365-business-central
ms.search.keywords: Czech, Slovak, SK Fiscal Printers Integration, Streamline Tools
---
# SK Fiscal Printers Integration for Dynamics 365 Business Central

> Update 31.07.2025

**SK Fiscal Printers Integration** is an extension for the Microsoft Dynamics 365 Business Central information system that provides direct integration with fiscal printers from VAROS, specifically the [eKASA FT5000](http://www.varos.sk/vyrobky-FT5000) series. This solution is designed to fully comply with Slovak legislative requirements according to Act 289/2008 Z.z., which regulates the recording of sales from goods and services in cash or other methods (e.g., payment cards, meal vouchers, or checks).

## Key benefits of the module

- **Full legislative compliance** – Allows printing and electronic registration of tax documents according to current Slovak legislation, including the payment of advance invoices, ensuring that your company is always in compliance with legal regulations.
- **Streamlined document management** – The module enables automatic processing of payment receipts and provides the option to print copies additionally. Customers also have the option to manually register documents and mark them as registered, offering greater flexibility in document handling.
- **Access to document history** – Users can easily view the complete history of fiscal documents directly in Dynamics 365 Business Central, improving the clarity and management of financial records.
- **Simple and reliable API connection** – The module uses an API interface from VAROS for seamless Business Central Online communication with fiscal printers. For ease of management, the API fee is included in the module price (price based on number of devices).

For technical information from VAROS, see [Manuals](http://www.varos.sk/manualy.php).

> [!IMPORTANT]
> The module requires the "Core Localization Pack for Czech". To meet other Slovak legislative requirements, choose the [SK Legislative Pack](https://appsource.microsoft.com/en-us/product/dynamics-365-business-central/PUBID.autocontas%7CAID.pas_2021_3%7CPAPPID.6faf8513-1781-444c-8c20-032a6f1efe06?tab=Overview) and the [SK Language Pack](https://appsource.microsoft.com/en-us/product/project-madeira/PUBID.autocontas%7CAID.pas_2021_5%7CPAPPID.a90b83b0-d99d-4156-9c65-526b37fe3497) from Aricoma.

## Usage

The following text describes the scenarios supported by the Fiscal Printers Integration module.

> [!NOTE]
> A better user experience can be achieved when combined with the  [Multiple Payment Methods](../Solutions/multiple-payment-methods.md) module.

### Creating a tax document on a fiscal printer

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Sales Invoices** and then choose the related link.
2. On the Sales Invoices page, click *New* to create a new sales invoice.
3. Complete the lines of the document as needed.

> [!IMPORTANT]
> The sales receipt must be set to **Prices incl. VAT** must be set to Yes. The system will notify the user of this when entering the Payment Method Code with the **Fiscal Tax Document** flag enabled.

4. In the **Payment Method Code** field, select the payment method linked to a fiscal printer (see [Setting payment methods](SK-FiscalPrinters-Integration-setup.md#payment-methods-settings) with the **Fiscal Tax Document** flag enabled).
5. Post the document.

If everything is set correctly, a Fiscal Item is created along with the others (see the *Find Entries* action) and a tax document containing the individual lines of the posted sales invoice is printed on the fiscal printer.

> [!NOTE]
> In Fiscal Entries, you can determine whether the receipt is a tax document based on the value in the **Tax document** field.

### Payment of the posted invoice on the fiscal printer

This scenario describes cash payment of a posted invoice if the fiscal printer in BC is connected to the Bank Account entity. If connected to the Cash Desk entity, simply create a cash receipt in the usual way (similar to [Payment of advance invoice on the fiscal printer](#payment-of-advance-invoice-on-the-fiscal-printer) below).

> [!NOTE]
> For more information, see [Connecting Fiscal Printers to Bank Accounts / Cash Registers](./SK-FiscalPrinters-Integration-setup.md#connecting-fiscal-printers-to-bank-accounts--cash-desks).

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Payment Journals** and then choose the related link.
2. On the **Payment Journals** page, create a new line.
3. Add information to post the invoice payment (Line Type = Payment, Account Type = Customer, Account Number = Customer number from the invoice)
4. Select the required document to be paid via the **Applies-to Doc. No.** field and confirm the selection
5. Enter Bank Account in the **Bal. Account Type** field and the bank account with the fiscal printer set in the **Bal. Account No.** field.
6. Before posting the document, manually adjust the amount to round to the nearest 5 cents. If the payment amount is not manually adjusted in the journal to round to 0.05, the system will warn the user and the transaction cannot be posted without correcting the payment rounding.
7. Use the *Post* function to post the internal document.

If everything is set up correctly, a Fiscal Ledger Entry is created along with others (see the *Find entries* action) and a “Invoice payment receipt” is printed on the fiscal printer (showing the invoice number and amount paid).

> [!NOTE]
> If the invoice needs to be paid with multiple payment types (e.g., a combination of card and cash), you will enter multiple journal lines with the required amounts and the appropriate bank accounts as a balance account. All these lines must then have the same document number.

### Balancing the invoice on the printer during posting

This is a case where the result of posting a sales document is to be a booked sales invoice and at the same time a Invoice payment receipt on the fiscal printer.
The procedure is the same as in the chapter [Creating a Tax Document on a fiscal printer](#creating-a-tax-document-on-a-fiscal-printer). The only difference is that you use a Payment Method Code with the **Fiscal Tax Document** flag turned deactivated.

### Payment of advance invoice on the fiscal printer

This scenario describes a case where the seller issues a sales advance invoice with an expected cashless payment method. Subsequently, the customer agrees with the seller on payment on the spot.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Cash Documents** and then choose the related link.
2. On the **Cash Documents** page, click *New* to create a new cash document.
3. In the **Document Type** field, select Receipt.
4. In the document line, select the relevant customer's account number in the **Account No.** field and the required advance invoice in the **Advance Letter No.** field.
5. Check the amount paid in the **Amount** field (the system will pre-fill the value for full payment).
6. Use the *Post* function to post the cash receipt.

If everything is set up correctly, posting the cash document created a Fiscal Ledger Entry (see the *Find entries* action) and a “Invoice payment receipt” is printed on the fiscal printer (showing the invoice number and amount paid).

### Cash payment of purchase credit note

Registration on a fiscal printer is also supported on the purchase side. Similar to [Balancing the invoice on the printer during posting](#balancing-the-invoice-on-the-printer-during-posting), it is controlled by selecting the **Payment method code** on the purchase document.

> [!NOTE]
> The **Fiscal tax document** flag on the Payment method code is ignored; on the purchase side, it is always just an “invoice payment.”

### Subsidies of the fiscal cash desk from another cash desk

This scenario concerns the transfer of cash from the regular cash desk to the cash desk representing the fiscal printer.

The user creates and posts two Cash Documents:

- Withdrawal – on the document line, the G/L account “Money in transit.”
- Receipt – for the cash desk where the fiscal printer's payment method has the value *Cash*, on the document line G/L account “Money in transit”.

If everything is set up correctly, posting the cash document created a Fiscal Ledger Entry (see the *Find entries* action) and the Cash Deposit document is printed on the fiscal printer.

### Cash withdrawal from the fiscal cash desk

This scenario concerns the transfer of cash from a fiscal printer. If the transfer is to a regular cash register, proceed in the same way as in [Subsidies of the fiscal cash desk from another cash desk](#subsidies-of-the-fiscal-cash-desk-from-another-cash-desk).

If the fiscal printer is linked to a bank account, the scenario of depositing cash into a bank account is carried out entirely in the General Journal:

- A line with a bank account representing the company's bank account; the Balance Account is "Money in transit."
- A line with a bank account where the Fiscal Means Of Payment has the value Cash; the Balance Account is "Money in transit"

If everything is set up correctly, the journal entry also created one fiscal item (see the *Find Items* action) and a Cash Withdrawal document is printed on the fiscal printer.

### eKASA functions and sales overviews

Other functions eKASA and Sales Overviews (Daily closing, Monthly...) are available in the Print Manager software.

### Cash operations without Business Central

All the above cash operations (Tax Document, Deposit, Withdrawal, Invoice Payment, Invoice Cancellation, Coinage) can be done manually in the Print Manager software.
Additionally, it is possible to perform the corresponding operations in the BC with the fiscal printer switched off and the created fiscal ledger entries are additionally manually marked as “Registered” (see below).

### Other operations with Fiscal Ledger Entries

#### Registering entries

If the fiscal document does not print, the problem (apart from the problem with the printer itself) may be that for some reason the so-called “registration” of the item has failed. The Fiscal Ledger Entry carries the registration information - see the **Registered** and **Registration DateTime** columns.

If it makes sense to re-register the entry (printer was turned off, etc.), the user can register the entry additionally:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Fiscal Ledger Entries** and then choose the related link.
2. On the **Fiscal Ledger Entries** page, locate the appropriate record and run the *Register Entry* action.

> [!NOTE]
> In practice, using the Find Items action on a posted sales receipt is often a more convenient way to find the correct Fiscal Item.

If it is no longer practical to re-register the item (typically when the document has been printed and the item still does not contain information about a successful registration), the user can manually mark the item as already registered.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Fiscal Ledger Entries** and then choose the related link.
2. On the **Fiscal Ledger Entries** page, locate the appropriate entry and run the *Manually Set As Registered* action.

> [!NOTE]
> In this case, consider setting a higher value in the **Integration Timeout (ms)** field for the appropriate fiscal printer (see [Setting Up Fiscal Printers](SK-FiscalPrinters-Integration-setup.md#setting-up-fiscal-printers))..

#### Printing a copy of a Fiscal document

If you need to print a copy of a fiscal document (paper ran out or the document was otherwise damaged during printing), you can print the document again directly from the BC:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Fiscal Ledger Entries** and then choose the related link.
2. On the **Fiscal Ledger Entries** page, locate the appropriate entry and run the *Print Fiscal Document Copy* action.

#### Viewing exchanged data

In case of confusion, it is possible to view the files exchanged between the BC and the fiscal printer. These are recorded directly in the entries:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Fiscal Ledger Entries** and then choose the related link.
2. On the **Fiscal Ledger Entries** page, locate the appropriate record.
3. Run the *Download Registration Batch* action (the data that was sent to the fiscal printer).
4. Run the *Download Registration Confirmation* action (data received - internal registration data).

## See also

[SK Fiscal Printers Integration Setup](SK-FiscalPrinters-Integration-setup.md)  
[Streamline Tools](streamlinetools.md)  
[ARICOMA Solution](../index.md)
