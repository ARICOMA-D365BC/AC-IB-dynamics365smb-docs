---
title: ARICOMA SOLUTIONS - QR code on Sales documents| Microsoft Docs
description: This section describes ARICOMA Solutions
author: jelen
ms.service: dynamics365-business-central
ms.topic: article
ms.devlang: na
ms.tgt_pltfrm: na
ms.workload: na
ms.search.keywords: Slovak, QR, BySquare
ms.author: jelen
---

# Setting up QR codes on sales documents

## API settings

The registration details for accessing the **by square®** API service must be entered in Business Central.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **By Square Service Setup**, and then select the related link.
2. On the By Square Service Setup page, enter your login details in the **User E-mail** and **Password** fields.
3. Use the *Verify Connection* function to check that everything is set up correctly.
4. Enable the integration by turning on the **Enabled** flag.

## Setting up QR codes

The main switch for QR code functionality on sales documents is in Sales Settings.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter Sales and Receivables Settings, and then select the relevant link.
2. On the Sales and Receivables Settings page, set the value in the **Print QR Payment** field to Yes.

> [!NOTE]
> In the Finance Settings, the value in the **Legislation** field must be “SK”.

## Setting up payment methods

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Payment Methods**, and then select the relevant link.
2. On the Payment Methods page, select the line representing payment by bank transfer and set the value in the **Print QR payment** field to Yes.

## See also

[ARICOMA Solution](solutions.md)  
[SK Legislative Pack](sk-legislative-pack.md)  
[QR codes on sales documents](sk-qr-bysquare.md)  
