---
title: GP Tom Integration
description: GP Tom Integration
author: jelen
date: 09/30/2024
ms.service: dynamics-365-business-central
ms.search.keywords: GP Tom Integration, Streamline Tools, Global Payments, settings
---
# Setup GP tom integration
> Update 14.10.2024

## Setup

### Modul activation
The first step (in the production database) is to check if the company has activated the module subscription (see [Aricoma monetization help](https://www.aricoma.com/docs/en-us/dynamics365/business-central/ProductivityPack/monetization.html)). 
In the next steps, the user is guided through the registration of the first payment terminal.
1.	Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Payment Terminals Setup** and then select the related link. 
2.	On the **Payment Terminals Setup** page, run the Set API Endpoint action.
3.	Enter the API key obtained by activating it in the terminal.

### Terminal settings
Each physical device must be registered in the Payment Terminals table. The description of the settings below corresponds to the most common configuration, which is the recording of card payments.
>[!NOTE]
>The GP Tom application also allows the registration of cash or cryptocurrency payments, These options are supported, however no other settings are described in BC where the registration of such operations would make sense.
1.	Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Payment Terminals** and then select the related link. 
2.	On the **Payment Terminals** page, click New to create a new payment terminal.
3.	Enter the *Terminal Code* and *Description*.
4.	In the *Terminal ID* field, enter the number assigned to the terminal.
5.	In the *GP tom Merchant Username* field, enter the name (e-mail) of the terminal user.
6.	In the *GP tom Merchant Password* field, enter the password of the terminal user.
7.	In the *GP tom Transaction Timeout (s)* field, leave the default value unless you have a specific request to reduce or extend the time that BC does not finish waiting for a response from the terminal.
8.	In the Preferable *Payment Type* field, select Card. 
9.	In the Preferable *Receipt Type* field, select if the receipt should be printed from the terminal or sent via email or mobile phone.
10.	In the *Payment Document Nos.* field, select a number series to designate the payment records in BC.
11.	Run the *Acquire Access Token* action to verify that the login information entered is correct.

### Calling a payment registration from elsewhere
The connection can be made in 2 ways in general:
- By running the "PT Register Payment_acc" page using the RegisterPaymentDialog functions in the "PaymentTerminalsInterface_acc" CU (see below).
- By a custom interface, or completely without UI, using the RegisterPayment function in the CU "PaymentTerminalsInterface_acc".

The following description of the CU PaymentTerminalsInterface_acc shows all available functions:

codeunit 72056620 "PaymentTerminalsInterface_acc"

```al 
/// <summary>
/// Function for running the batch closing on the payment terminal with GUI (Confirmation dialog).
/// </summary>
/// <param name="PaymentTerminal">Record of the "Payment Terminal_acc" table where batch closing will be performed.</param>
procedure TerminalBatchYesNo(PaymentTerminal: Record "Payment Terminal_acc")

/// <summary>
/// Function for running the batch closing on the payment terminal without GUI (no confirmation dialog).
/// </summary>
/// <param name="PaymentTerminal">Record of the "Payment Terminal_acc" table where batch closing will be performed.</param>
/// <param name="ShowDialog">Indicates whether a progress dialog and messages are displayed when the operation is performed.</param>
procedure TerminalBatch(PaymentTerminal: Record "Payment Terminal_acc"; ShowDialog: Boolean)

/// <summary>
/// Function for running a page that enables user to register payments on the payment terminal.
/// </summary>
/// <param name="PaymentTerminal">Record of the "Payment Terminal_acc" table where transaction will be registered.</param>
procedure RegisterPaymentDialog(PaymentTerminal: Record "Payment Terminal_acc")

/// <summary>
/// Function for running a page that enables user to register a transaction on the payment terminal with predefined values.
/// </summary>
/// <param name="InitialPaymentTerminalTransaction">Record of the "PaymentTerminalTransaction_acc" table with the initial values of the transaction (e.g. amount, document number, payment method, etc.).</param>
procedure RegisterPaymentDialog(InitialPaymentTerminalTransaction: Record PaymentTerminalTransaction_acc)

/// <summary>
/// Function for registering a transaction on the payment terminal based on defined parameters directly without dialog page.
/// </summary>
/// <param name="PaymentTerminalCode">A unique code of the payment terminal</param>
/// <param name="PaymentType">Type of the payment (Cash, Card etc.).</param>
/// <param name="DocumentNo">Number of the documet to which a payment is registered.</param>
/// <param name="PostingDate">Posting date of the documet to which a payment is registered.</param>
/// <param name="CurrencyCode">Currency code of the payment.</param>
/// <param name="Amount">Amount of the payment.</param>
/// <param name="ShowDialog">Indicates whether a progress dialog and messages are displayed when the operation is performed.</param>
procedure RegisterPayment(PaymentTerminalCode: Code[20]; PaymentType: Enum "PT Payment Type_acc"; DocumentNo: Code[20]; PostingDate: Date; CurrencyCode: Code[10]; Amount: Decimal; ShowDialog: Boolean)

/// <summary>
/// Function for cancelling the transaction on the payment terminal with GUI (Confirmation dialog).
/// </summary>
/// <param name="PaymentTerminalTransaction">Record of the "PaymentTerminalTransaction_acc" table of the transaction that will be cancelled.</param>
procedure CancelTransactionYesNo(var PaymentTerminalTransaction: Record PaymentTerminalTransaction_acc)
begin
    PaymentTerminalsMgt.CancelTransactionYesNo(PaymentTerminalTransaction);
end;
/// <summary>
/// Function for cancelling the transaction on the payment terminal without GUI (No confirmation dialog).
/// </summary>
/// <param name="PaymentTerminalTransaction">Record of the "PaymentTerminalTransaction_acc" table of the transaction that will be cancelled.</param>
/// <param name="ShowDialog">Indicates whether a progress dialog and messages are displayed when the operation is performed.</param>
procedure CancelTransaction(var PaymentTerminalTransaction: Record PaymentTerminalTransaction_acc; ShowDialog: Boolean)
```

## See also
[GP tom integration](gptom-integration.md)  
[Streamline Tools](streamlinetools.md)  
[ARICOMA Solution](../index.md)
