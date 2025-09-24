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

# QR codes on sales documents

> Update 21.09.2025

This feature integrates Business Central with the **by square®** service. To use the service, you need to register your company and order one of the [packages](https://app.bysquare.com/App/BalikySluzieb) based on the number of QR codes generated.

QR codes in **PAY by square** format are displayed on the following reports:

- 31018 Sales - invoice with advance payment
- 31189 Sales invoice
- 31197 Service invoice
- 31014 Sales - advance invoice

If you have [set up the use of QR](sk-qr-bysquare-setup) for the payment method and the document balance is not zero, then the document is checked for IBAN completion and a notification is displayed to the user.

> [!NOTE]
> The online version of Business Central includes preinstalled fonts that you can use when you generate QR codes in reports. For Business Central on-premises, you must install the barcode fonts on the computer that runs the Business Central server.

## See also

[ARICOMA Solution](solutions.md)  
[SK Legislative Pack](sk-legislative-pack.md)  
[QR codes on sales documents - Setup](sk-qr-bysquare-setup.md)  
