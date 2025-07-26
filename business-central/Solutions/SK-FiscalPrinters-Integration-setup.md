---
title: SK Fiscal Printers Integration - Setup
description: SK Fiscal Printers Integration - Setup
author: RobertJelen
date: 07/31/2025
reviewer: janousek
ms.service: dynamics-365-business-central
ms.search.keywords: Czech, Slovak, SK Fiscal Printers Integration, Streamline Tools
---
# SK Fiscal Printers Integration Setup

> Update 31.07.2025

The integration with VAROS fiscal printers
is based on the functionality of the VAROS Print Manager. This is
to be installed in the company environment (see [Manuals](http://www.varos.sk/manualy.php)) directly on the computer to which the printer is connected (typically via USB).
Each fiscal printer must also be connected to the Internet via LAN (or
via Wifi).

## Setting user permissions

Permission sets:

- FP_BASIC_ACC: Fiscal Printers - Basic
- FP_SETUP_ACC: Fiscal printers - Settings

## Setting up fiscal printers

Each physical device must be registered in the Fiscal Printers codebook. The description of the settings below corresponds to the most common configuration, where the *Print Manager* ("Tlačový manažér") program is installed on each computer to which a fiscal printer is connected via USB port.

> [!IMPORTANT]
> API communication with fiscal printers requires an API key, for which you should contact the Aricoma sales department at [bc_sales@aricoma.com](mailto:bc_sales@aricoma.com).

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Fiscal Printers** and then choose the related link.
2. On the Fiscal Printers page, click New to create a new fiscal printer.
3. Enter the fiscal printer **Code** and **Description**.
4. Enter 0.05 in the **Minimum Cash Amount** field.
5. Enter 0.05 in the **Cash Amount Rounding Precision** field.
6. Set the VAT level rates in the **Code 1 VAT %** to **Code 4 VAT %**.fields identically to the VAT level rates set in the Print Manager settings
7. Select *Varos API* in the **Integration Method** field.
8. Fill in the valid data in the **Integration Service URL** field; for the purposes of the test mode, set [https://rps.test1.bts1.rdm.varos.sk](https://rps.test1.bts1.rdm.varos.sk)
9. In the **Integration Service API key** field of the integration service, enter the key (password) that you obtained from Aricoma.
10. Set the **Integration Timeout (s)** to 60.
11. In the **Device ID** field, enter the serial code of the Varos fiscal printer.
12. In the **Requested Binding Duration** field, enter the number of days of validity, e.g. 365 days.
13. Run the *Create Device Binding* action (VAROS API). The Varos printer generates and prints a verification code, which you enter in the BC dialog box and confirm. Verify that the fiscal printer has set the **Device Binding Exists** to Yes.
14. In the **Binding Valid to** field, the system automatically adds the valid link to the fiscal printer.

> [!NOTE]
> With regard to the legislative regulation in Slovakia related to the adjustment of the amount of rounding of cash receipts to 0.05 cents, it is necessary to set in the system also the payment tolerance according to the currency of 0.05.

## Connecting fiscal printers to Bank Accounts / Cash Desks

To ensure data reconciliation within the integration, it is necessary to have a separate bank account or cashier card for each type of payment used (Cash, Card, Meal voucher, etc.).

> [!NOTE]
> Each method has its advantages and disadvantages, so try out which method is best suited to your business processes. Given the ease of use of the Cash Desk module from the Czech localization, this connection has recently become more popular.

### Cash Desk settings

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Cash Desks** and then choose the related link.
2. On the **Cash Desks** page, select the appropriate record and click the *Edit* action.
3. In the **Fiscal Printer Code** field,  enter the corresponding fiscal printer.
4. In the **Fiscal Means Of Payment** field, select the appropriate type according to the Print Manager settings.

Also, don't forget to set the rounding in the **Rounding method code** field on the cash desk card.

> [!IMPORTANT]
> When using the cash desk documents functionality, Fiscal Ledger Entries are only created during cash desk document posting.

### Bank Account settings

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Bank Accounts** and then choose the related link.
2. On the **Bank Accounts** page, select the appropriate record and click the *Edit* action.
3. In the **Fiscal Printer Code** field,  enter the corresponding fiscal printer.
4. In the **Fiscal Means Of Payment** field, select the appropriate type according to the Print Manager settings.

## Payment Methods settings

In the Payment Methods list, you must set up payment methods for all combinations of fiscal printer and payment means that can subsequently be used on sales and purchase documents to balance them during posting.

If the fiscal printer is connected to a Bank Account card, select Bank Account in the **Bal. Account Type** field and select the bank account card number in the **Bal. Account No.** field. If the fiscal printer is connected to a "regular" cash register, select the desired value in the **Cash Desk Code** field (in the **Cash Document Action** field, select whether to release or post the document).

> [!IMPORTANT]
> In the **Fiscal VAT Document** field, specify whether you want to register the document as a tax document in eKASA or only record it as an "invoice payment" (i.e., without VAT information, which is contained in the tax document in BC).

## VAT posting setup of fiscal printer

The following table shows the specific VAT schemes applicable to fiscal printers and instructions on what parameters to set for the respective VAT posting group combinations:

| VAT scheme      | Setup instructions                      |
|-----------------|-----------------------------------------|
| Discount        | Select “B - Discount” in the **Fiscal Document Line Type** field |
| Voucher         | Select “D - Voucher” in the **Fiscal document line type** field |
| Returnable Packaging         | Select “V - Returnable Packaging” in the **Fiscal document line type** field |
| Rounding        | Select “RND - Rounding” in the **Fiscal document line type** field <br>Select “N - Exemption From Tax” in the **Fiscal Exemption From VAT Reason** field |
| Travel Agencies    | Select “K - Travel Agencies” in the **Fiscal Exemption From VAT Reason** field |
| Tax Exemption   | Select “N - Exemption From Tax” in the **Fiscal Exemption From VAT Reason** field |
| Tax remittance  | Select “P - Transfer Of Tax Liability" in the **Fiscal Exemption From VAT Reason** field |
| Used Goods    | Select “T - Used Goods” in the **Fiscal Exemption From VAT Reason** field |
| Works of Art    | Select “U - Works of Art” in the **Fiscal Exemption From VAT Reason** field |
| Collectibles and Antiques    | Select “Z - Collectibles and Antiques” in the **Fiscal Exemption From VAT Reason** field |

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Fiscal VAT Posting  Setup** and then choose the related link.
2. On the **Fiscal VAT Posting Setup** page, create rows for the relevant VAT account group combinations representing the specific VAT schemes used by the company in conjunction with fiscal printers.

## See also

[SK Fiscal Printers Integration](SK-FiscalPrinters-Integration.md)  
[Streamline Tools](streamlinetools.md)  
[ARICOMA Solution](solutions.md)
