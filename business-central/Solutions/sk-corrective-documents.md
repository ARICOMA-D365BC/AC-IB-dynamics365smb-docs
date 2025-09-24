---
title: ARICOMA SOLUTIONS - SK Legistaltive Pack| Microsoft Docs
description: This section describes ARICOMA Solutions - Slovak legislation
author: kunes
ms.service: dynamics365-business-central
ms.topic: article
ms.devlang: na
ms.tgt_pltfrm: na
ms.workload: na
ms.search.keywords: Slovak, , additional functions, internal correction, debit memo, credit memo
ms.author: v-makune
---
# Corrective documents

> Update 05/31/2024

Entering corrective documents using the set source code and, if necessary, filling in the original document number allows you to correctly assign or exclude these transactions in the VAT statement. This requires setting the Source Code Filter, Document Type, and Document Type Filter fields on the VAT statement line.

## Internal correction of sales invoice

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Sales credit memo**, and then select the related link.
2. Fill in the header and lines as usual.
3. In the **Credit memo type** field, select *Internal correction*.
4. In the **Source Our Invoice No.** field, enter or select the number of the invoice being corrected.

## Internal correction of purchase invoice

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Purchase credit memo**, and then select the related link.
2. Fill in the header and lines as usual.
3. In the **Credit Memo Type** field, select *Internal correction*.
4. In the **Source Vendor Invoice No.** field, enter or select the number of the invoice being corrected.

> [!NOTE] > The transaction is posted with the Source Code for internal credit note set. At the same time, this Source Code is also overwritten in the VAT entry for the corrected invoice.
> If the VAT entries of the original document are Closed, the Source Code for internal credit note is not added to the VAT entries of the original document or to the VAT entries of the credit memo.
> [!WARNING]
> Required settings: Source code setup, Purchase internal credit memo field = INTCREDIT, Sales internal credit memo field = INTCREDIT

## Sales debit note

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Sales invoice**, and then select the related link.
2. Fill in the header and lines as usual.
3. Set **Debit Note** to YES.
4. Enter or select the number of the corrected invoice in the **source Our Invoice No.** field.

## Purchase debit note

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Purchase invoice**, and then select the related link.
2. Fill in the header and lines as usual.
3. Set **Debit Note** to YES.
4. In the **Source Vendor Invoice No.** field, enter or select the number of the invoice being corrected.

> [!NOTE]
> The transaction is posted with the set Source Code for debit note, the Source Code of VAT entries in the original document remains unchanged.
> [!WARNING]
> Required settings: Source code settings, **Purchase debit note** field = DEBITNOTE, **Sales debit note** field = DEBITNOTE.

## See also

[ARICOMA Solution](solutions.md)  
[SK Legislative Pack](sk-legislative-pack.md)
[VAT Statement - Setup](sk-vat-statement-setup.md)
