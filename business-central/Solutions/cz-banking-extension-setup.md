---
title: CZ Banking Extension - Setup
description: CZ Banking Extension - Setup
author: RobertJelen
date: 05/30/2025
reviewer: janousek
ms.service: dynamics-365-business-central
ms.search.keywords: banking, finance, czech, API
---
# CZ Banking Extension Setup

> Update 10.01.2026

The CZ Banking Extension module needs to be activated, in the production environment the user will be asked to activate the subscription (see [documentation on monetization](https://www.aricoma.com/docs/en-us/dynamics365/business-central/ProductivityPack/monetization.html)).

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **CZ Banking Extension Settings** and then choose the related link.
2. Activate *Enabled* to enable the functionality.

> [!TIP]
> Important: Before setting up, run the Assisted Setup for this module, which can be found in Assisted Setup -> Set up ARICOMA extensions. This will allow you to upload a configuration package and use it to add the sample settings, which are referenced in the scenarios in the following chapters, among others.

## Bank statement and payment order formats

The Extended CZ Banking module is designed primarily to optimise work with statements and orders, but it also includes a universal import of bank statements in ABO format (\*.gpc), which is supported in its basic form by most banks in the Czech Republic. It also allows you to export payment orders in ABO format (\*.kpc). The module now also supports the SEPA format (\*.xml).

> [!TIP]
> Use one of the add-ons to this addon for API communication with your bank.
> [!TIP]
> For Slovak customers, it may be useful to use the SEPA format with payment cumulation on payment orders.

### Settings for manual batch import of statements

If your bank supports electronic statements that contain multiple transactions for multiple accounts, this can be used to create multiple statements at once (within a single company).

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **CZ Banking Extension Settings** and then choose the related link.
2. Go to the selected line (e.g. with the code "ABO_LOCAL").
3. Verify that the **Processing Codeunit ID** field contains the value 52057427 to allow you to import statements via the Import Bank Statements action.
4. Run the *Extended Setup* action.
5. Verify that the **Batch Import Enabled** flag is set to Yes.
6. Verify that the **Processing Codeunit ID** field contains the value 52057431 for processing ABO format files.

> [!TIP]
> Enable the Support ZIP files field to allow importing multiple dump files at once within a single zip file.

#### Import encoding settings

In case of incorrect characters in the imported statement, you need to adjust the encoding used. Set the correct encoding in the Content Encoding field. To verify the functionality of the set encoding, we recommend using the Test Content Encoding action on the Statements Import Extended Setup page.

### Settings for manual import of bank statements via API

If you have purchased an add-on from Aricoma for API communication with your bank and you do not want to use the automation processing support, then you need to adjust the settings. A detailed description of all the steps is in the documentation for each add-on, however the import itself is set up as follows in the case of ABO format:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Bank Export/Import Settings** and then choose the related link.
2. Navigate to the selected line (e.g. with the code "CZBE_ABO-IMP-LOCAL")
3. Select the line, press Ctrl+C, navigate to the new line and press Ctrl+V.
4. Rename the Code field to e.g "CZBE_ABO-IMP-API"
5. Check that the **Processing Procedure ID** field contains the value 52057427 to allow importing statements via the Import Bank Statements action.
6. Run the *Advanced Settings* action.
7. On the Statements Import Extended Setup, run the *New* action.
8. In the **Description** field, you can edit the pre-filled text.
9. Add parameters for the API connector - see the [documentation](ext-banking-API-setup.md) for the specific API.

> [!IMPORTANT]
> If you use the bank import settings created in this way on the Bank Account card, then the user will start communicating with the bank's API every time the Import button is pressed on the Bank Statement card or when the Bank Statement Import function is started. This may not always be desirable, banks usually have set limits on the number of queries (e.g. per 10 minutes).

## Setting up automation of import and processing of bank statements via the central stack

Automation can only be set up for methods where no user intervention is required. It is therefore not possible for importing from a local repository, but instead is typically suitable for API communication with the bank.

### Setting the download to the Central Stack

The following procedure follows the result of the settings from the chapter [Settings for manual import of bank statements via API](#settings-for-manual-import-of-bank-statements-via-api).

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Bank Export/Import Settings** and then choose the related link.
2. Navigate to the line with the code "CZBE_ABO-IMP-API".
3. Run the *Advanced Settings* action.
4. On the Statements Import Extended Setup, set the *Enabled for the Central Stack* field to Yes.

### Automatic downloading of statements to the Central Stack

You only need to enable automatic downloading of statements to the Central Stack in one company. The function then goes through all the advanced settings for importing statements in this company, where the Enabled for Central Stack field is set to Yes. According to these settings, it will import the listings available on the interface that allows import without user intervention (typically the API).

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Extended CZ Banking Setup** and then choose the related link.
2. Set the **Automatically Download Statements To Central Stack** flag.

> [!NOTE]
> The created job queue entry is set to run at 6:00 AM on weekdays by default.
> [!TIP]
> If you want to restrict the settings by which the automated import will be performed (see above), you can set the filter to a code in the Parameter String field on the Job Queue Items tab (for example, "CZBE_ABO*\").

### Setting up import from the central tray

The following procedure walks through the key settings included with the sample data.

1. Select the icon , enter Bank Export/Import Settings, and then select the associated link.
2. Navigate to the line with the code "CZBE_ABO-IMP-CENTRAL".
3. Make sure the **Processing Procedure ID** field has the value 52057427.
4. Run the *Advanced Settings* action.
5. In the **Bank Statement Provider** field, select the value "Central Stack".
6. Check that the **Processing Procedure ID** field contains the value 52057429 for processing ABO format files.

### Setting up bank accounts for automation

For central processing and the resulting possibilities of automating processing, it is necessary to clearly define which companies own which bank accounts. The table Bank Statement Processing Setup is used for this purpose. All account numbers that contained files imported into the Central bank statement stack are automatically entered into this table. You then need to assign the account to one of the companies in BC.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Bank Statement Processing Settings** and then choose the related link.
2. Select the line with the account number you are setting up.
3. If the account is in a foreign currency, select the appropriate code in the **Currency Code** field.
4. At the bottom of the page in the Settings section, fill in the **Statement Start Date** field for the appropriate Company from which to process statements. This date refers to the Listing Date.

> [!IMPORTANT]
> The number of records in this table with the Statement Start Date filled in is the determinant for controlling the number of accounts in the subscription. If a number greater than the number valid in the subscription is defined, the Central Stack cannot be opened and the number of valid records in this setting must first be reduced. Disabling the import is possible by setting the **Processing disabled** flag.
> [!TIP]
> If you have a new bank account but no statement has been imported yet, you can also make the setting in advance by manually entering the account number.

### Automatic processing of the extract from the central stack

You only need to enable automatic processing of statements from the Central Stack in one company.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Extended CZ Banking Setup** and then choose the related link.
2. Set the **Automatically Create Bank Statements** flag.

> [!NOTE]
> The created job queue entry is set to run at 6:00 AM on weekdays by default.

### Cleaning processed statements from the Central Bank Statement Stack

We recommend that you continuously delete the already processed records in the Central Bank Statement Stack table, preferably with an automated task in one company:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Extended CZ Banking Setup** and then choose the related link.
2. Set the **Automatically Clean Central Stack** flag.

> [!NOTE]
> The created job queue entry is set to run at 6:00 AM on weekdays by default. The automatic batch by default deletes statements older than 14 days, but can be overridden in the report dialog (the "Date formula" field).

## Support settings for importing statements

### Automatic account number formatting (optional)

Enabling this feature will automatically format bank account numbers in BC, eliminating problems with importing bank statements.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Company Information** and then choose the related link.
2. Activate the **Format Account Number** field.

### Bank account number on bank statement (optional)

This is used to specify the exact format of the bank account number that is in the statement files if it differs from the value entered by default in the Bank Account Number field.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Bank Accounts** and then choose the related link.
2. Complete the **Bank account number on bank statement** field.

## Support settings for automatic processing of statements

### Last level of batch processing (mandatory)

Specifies the last level of automatic processing of bank statements. The actual processing of the bank statement is carried out using the standard process: Bank statement / Issued bank statement / Journal / Payment posting.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Bank Accounts** and then choose the related link.
2. Select the desired value in the "Last Bank Statement Level" field:
   - Bank Statement (default value)
   - Issued bank statement
   - Journal
   - Post Journal

> [!TIP]
> Usually the value *Journal* is set. The *Bank Statement* value is set when a payment advice needs to be manually imported for the imported bank statement.
> [!NOTE]
> If you select Post Journal, the statement will only be posted if account numbers (customer, supplier, employee, financial account) are entered on all lines of the statement. Another rule is that the financial account number must not be the same as the account set in the **Unassigned Payments Account** field on the bank account card.

### Number Series (optional)

The bank statement processing function can automatically number both unissued and issued bank statements in Business Central by inserting the year and serial number assigned by the bank according to a template.

It is necessary to set the same number series for unissued and issued bank statements on the Bank Account Card.
This number series must have Manual Numbering enabled and a Mask filled in. The mask must contain at least 2 characters for the year (yy) and a free number (ccc).

### Check bank statement turnover (optional)

When "Issuing" a bank statement, the function checks if the statement turnover matches the difference between the Starting and Ending balance of the statement as shown on the bank statement header. The Starting and Ending balance of the statement is imported from the Bank Statement file.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Bank Accounts** and then choose the related link.
2. Activate the **Check Bank Statement Turnover** field.

## Payment cumulation settings

### Vendor settings for payment cumulation

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Vendors** and then choose the related link.
2. Open the vendor card for which you want to allow payment cumulation.
3. On the Vendor Card page, on the Payments tab, set **Cumulate Payments**.

> [!NOTE]
> The same setup you can do on the Customer Card page.

### Setting the cumulation parameters on the bank account

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Banks** and then choose the related link.
2. Open the bank account tab for which you want to set up payment cumulation.
3. On the Bank Account Card page, in the CZ Banking Extension tab, set the cumulation of payments as required:

    - Field **Cumulate payment orders lines** – enables / disables cumulation
    - Field **Cumulative Variable Symbol Nos.** – if it is not accumulated according to VS, KS or SS, then the number according to the number series set here is added to the VS field (SS and KS are taken from the first merged line of the command)
    - Field **Cumulative Line Description** – description for the created cumulative line
    - Field **Group Per Variable Symbol** – cumulation after VS
    - Field **Group Per Constant Symbol** – accumulates for KS
    - Field **Group Per Specific Symbol** – accumulates after SS

## Custom modifications

### Custom format for import

If you download statements in a different format or if you need a specifically customized import, your partner must create a custom process codeunit to import bank statements into the bank statement stack.
The stack should be populated with unformatted data as it is directly in the bank statement file of the appropriate format (the formatting and validation of the data is handled by the bank statement creation function).

    codeunit xxx "Bank Stmt.Imp.-MyFormat"

    TableNo = "Bank Stmt. Import Request Acb";

    trigger OnRun()
    var
        DotNetStreamReader: Codeunit DotNet_StreamReader;
        InStream: InStream;
       TempCentralBankStmtBufferAcb: Record "Central Bank Stmt. Buffer Acb" temporary;
        TempBankStmtLineBufferAcb: Record "Bank Stmt. Line Buffer Acb" temporary;

    begin
        //StreamReader initialization to read the contents of the dump file:
        Rec.CreateStreamReader(InStream, DotNetStreamReader); 

        //Where to populate the contents of the StreamReader dump into temporary tables - see examples below

        //Example of header filling:
        NextBufferNo += 1;
        TempCentralBankStmtBufferAcb.Init();
        TempCentralBankStmtBufferAcb."No." := NextBufferNo;
        TempCentralBankStmtBufferAcb."Account No." :=  ;    //our account no.
        TempCentralBankStmtBufferAcb."Statement No." := ;
        TempCentralBankStmtBufferAcb."Statement Date" := ;
        TempCentralBankStmtBufferAcb."Starting Balance" := ;
        TempCentralBankStmtBufferAcb."Ending Balance" := ;
        TempCentralBankStmtBufferAcb.Insert();

        //Example of filling rows:
        TempBankStmtLineBufferAcb.Init();
        TempBankStmtLineBufferAcb."Buffer No." := NextBufferNo;
        TempBankStmtLineBufferAcb."Line No." := NextLineNo;
        TempBankStmtLineBufferAcb."Variable Symbol" := ;
        TempBankStmtLineBufferAcb."Constant Symbol" := ;
        TempBankStmtLineBufferAcb."Specific Symbol" := ;
        TempBankStmtLineBufferAcb."Account No." := ;   //account no. in 16+4 format
        TempBankStmtLineBufferAcb.Description := ;
        TempBankStmtLineBufferAcb.Amount := ;
        TempBankStmtLineBufferAcb.Insert();
        NextLineNo += 1;

        //Save the result of processing:
        Rec.SetData(TempCentralBankStmtBufferAcb, TempBankStmtLineBufferAcb); 
    end;

**See also**  

[CZ Banking Extension APIs Setup](cz-banking-extension-API-setup.md)  
[CZ Banking Extension](cz-banking-extension.md)  
[Financial Pack](finance-pack.md)
