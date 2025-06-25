---
title: GP Tom Integration
description: GP Tom Integration
author: jelen
date: 09/30/2024
ms.service: dynamics-365-business-central
ms.search.keywords: GP Tom Integration, Streamline Tools, Global Payments
---
# GP tom integration
> Update 14.10.2024

The **GP tom integration** addon is designed primarily for seamless integration of Business Central with payment terminals to make them a native part of business processes. In addition, it also enables related service operations to be performed directly from the BC environment.

The module connects Microsoft Dynamics 365 Business Central with payment terminals, or with the solution [**tom**](https://www.gptom.com/) operated on the terminals.
Thanks to this solution, you can enable your customers to pay not only with Visa and Mastercard, but also with Apple Pay, Google Pay, Edenred... More [here](https://www.gptom.com/en/docs/manual/zaciname/podporovana-karetni-schemata/).

## Usage

The following text describes the use of the terminal for the most common case, i.e. payment by credit card.

### Payment registration on a terminal according to the default settings
In this case, this is the standard BC functionality where the user uses the Post and Send function for posting. Each customer has a document posting profile set on his/her card, or the profile marked as default is used.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Payment Terminals** and then choose the related link.
2.	On the **Payment Terminals** page, select the terminal where you want to make the payment.
3.	Run the *Register Payments* action.
4.	On the **Register Payment** page, in the Amount field, enter a value for the terminal payment.
5.	Run the *Pay* action.
6.	The "Attach Card" dialog will appear on the terminal.

    <img src="media/GPtom_toPay.webp" alt="Attach Card" width="50%" height="50%">

7.	After successful payment, a dialog will appear where the operator will send the receipt of payment (or he can also Finish the process)

    <img src="media/GPtom_succPayment.webp" alt="Successful payment" width="50%" height="50%">

8.	In the dialog for sending the receipt, the sending method set for the respective terminal is pre-filled

    <img src="media/GPtom_printReceipt.webp" alt="Sending receipt" width="50%" height="50%">

9.	After the payment process is completed on the terminal, a notification with the result of the operation will appear on the Register Payment page, including the Open Entry option to display an entry with details of the ongoing communication with the terminal.

> [!TIP]
> When using the Pay and Close action in step 5, the **Register Payment** page will close after the transaction.

### Payment registration on a terminal with specific settings
By specific settings we mean in particular the processing of tips and a different transaction currency than the default one.
1.	Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Payment Terminals** and then select the related link. 
2.	On the **Payment Terminals** page, select the terminal where you want to make the payment.
3.	Run the *Register Payments* action.
4.	On the **Register Payment** page, in the Amount field, enter a value for the terminal payment.
5.	On the Payment tab, click *Show more*.
6.	Enable the *Collect Tip* flag if the terminal should prompt the user to enter a tip. Then, in the *Tip Amount* field, enter the amount to appear on the terminal.
7.	In the *Currency* field, enter the currency in which the payment is to be made.
8.	In the *Reference No.* field, you can change the transaction designation used for traceability between the BC and GP Tom records.
9.	On the Options tab, in the *Receipt Type* field, select Email or Phone; you must then enter an email address or phone number in the *Receipt Send To* field.
10.	Run the *Pay* action.
11.	The "Attach Card" dialog will appear on the terminal and proceed as described from step 6 onwards in the previous chapter.

### Cancelation of payment
This operation can be done directly from the BC, but of course also [on the terminal](https://www.gptom.com/en/docs/manual/zakladni-funkce/storno-platby/) (cancellation conditions are determined by the GP tom terms and conditions depending on the specific market).
1.	Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Payment Terminal Transactions** and then select the related link. 
2.	On the **Payment Terminal Transactions** page, select the record you want to cancel.
3.	Run the *Cancel Transaction* action.
4.	On the confirmation dialog, press *Yes*.
5.	Verify that the transaction status has changed to Cancelled.

### Transaction status update
It may happen that the terminal processes a transaction longer than the set waiting time. Or that the transaction has been cancelled directly at the terminal. In such a case, the records in the BC need to be updated additionally to include the final status of the transaction.
1.	Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Payment Terminal Transactions** and then select the related link. 
2.	On the **Payment Terminal Transactions** page, select the record which you want to update (with the value "Created" in the Transaction Status field).
3.	Run the *Update Transaction Status*.
4.	Verify that the transaction status has changed and additional information identifying the transaction has been added (e.g. transaction ID).

### Additional sending of the receipt
This option is only available on the terminal in the payment list.

### Closure
This administrative operation can be carried out directly from the BC, but of course also [on the terminal](https://www.gptom.com/en/docs/manual/zakladni-funkce/uzaverka/).
1.	Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Payment Terminals** and then select the related link. 
2.	On the **Payment Terminals** page, select the terminal where you want to make the closing.
3.	Run the *Register Payments* action.
4.	A list of closed batches opens in the terminal application.

## See also
[Setup - GP tom integration](GPtom-Integration-setup.md)  
[Streamline Tools](streamlinetools.md)  
[ARICOMA Solution](../index.md)
