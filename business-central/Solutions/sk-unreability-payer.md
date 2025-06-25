---
title: ARICOMA SOLUTIONS - Institute of unreliability of the payer | Microsoft Docs
description: This section describes ARICOMA Solutions -Institute of unreliability of the payer
author: kunes
ms.service: dynamics365-business-central
ms.topic: article
ms.devlang: na
ms.tgt_pltfrm: na
ms.workload: na
ms.search.keywords: Slovak, , additional functions, sale, VAT, Institute of the payer's unreliability
ms.author: v-makune
---

# Institute of the payer's unreliability
> Update: 03.03.2022

Functionality includes system checks that alert users to unreliable VAT payers when processing documents. It also includes checks whether the used bank account of the partner is registered for business in the Slovak Republic according to Act 222/2004 Coll.

The list of entities for which there are reasons for cancellation of VAT registration is available on the website of the Financial Administration. To automate the download, the customer needs to register on the [OpenData FS API ](https://opendata.financnasprava.sk/en/page/openapi) portal. 

The automated task then searches for vendors and customers registered in the system in the records of the Tax Administration of the Slovak Republic, creates its own records (the so-called Unreliable Payer Entries) and then performs checks against them when processing documents.

A company that is not listed and has at least one published bank account for doing business in Slovakia is designated as reliable.

> [!NOTE]
> Checking the unreliability of the VAT payer in the case of customers is 
limited to a check on the Payment Order only

## Verification of a new supplier
There may be scenarios where an immediate check of the unreliability of a payer is required. For these cases, use the VAT Unreliability Check action on the Supplier tab page.

## Purchase document
The VAT unreliability check is performed when a supplier (or creditor number) is entered or changed on a purchase document. The user will then receive a notification on the document.

When the Issue action is triggered, the bank account is checked on the Payment Details tab to see if it is in the list of accounts published by the supplier for doing business in Slovakia.
## Payment order

> [!WARNING]
> Available from version 2022 Wave 1

Before submitting a Payment Order approval request, run the VAT Unreliable Payer Check function, which sets the Published Bank Account flag (and also the Unreliable VAT Payer flag) on the lines.

This check will be performed automatically on the Issue Not Allowed action if any of the lines do not pass the check.
## Setting up a payer unreliability update

1.	Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Unreliable Payer Service Setup**, and then choose the related link. 
2. Run the **Set Default Web Service SK function**, which populates the service URL.
3. In the OpenDataFS API Key field, enter the value of the key generated in the **[OpenData FS API](https://opendata.financnasprava.sk/en/page/openapi)**
portal.
4. Turn on Auto Update to create a job queue entry. The system prompts you to open the Job Queue Entry Card, where you can change the startup parameters. The default setting is to update once a day at 8:00 pm

## See also

[ARICOMA Solutions](../index.md)  
[Slovak Legislative Pack](sk-legislative-pack.md)
