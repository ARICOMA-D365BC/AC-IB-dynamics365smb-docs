---
title: ARICOMA SOLUTIONS - SK Legistaltive Pack| Microsoft Docs
description: This section describes ARICOMA Solutions - Slovak legislation
author: kunes
ms.service: dynamics365-business-central
ms.topic: article
ms.devlang: na
ms.tgt_pltfrm: na
ms.workload: na
ms.search.keywords: Slovak, , additional functions, sale, VAT
ms.author: v-makune
---

# Summary Report (VIES)

> Update 31.05.2024

Standard functionality is used to create the Summary Report.

The difference compared to the standard functionality is in the structure of the XML file generated for the purposes of Slovak reporting.

## General Ledger Setup

To activate Slovak functionality, follow these steps:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **General Ledger Setup** and then choose the related link.
2. On the **General Ledger Setup** page you must select**SK** in **Legislation**field.
3. Confirm with the **OK** button.

## Setting up XML schemas

> [!TIP]
> You can find the complete XML schema settings in the Configuration Package, which you can obtain by running the Assisted Setup *Set Up SK Localization* (either import the latest version using the *AssistEdit* button in the existing company or perform a complete import of the sample parameterization in an empty company using the *Apply package* action).

Import the current XML schema template into the XML schemas by following these steps:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **XML Schemas** and then choose the related link.
2. On the **XML Schemas** page, in the **Actions** section, select the **Load Schema**action.
3. An import window will open where you select the appropriate XML file.
4. After import, a new line appears on the **XML Schemas**.
5. In the **XML port ID** field, select the value for the relevant year of validity - see the table below.
6. In the **Assigned to legislation** field, select **SK**.
7. Confirm with the **OK** button.

>[!NOTE]
>
> | XML port ID | Validity      |
> |   --------  | -------       |
> |   52068871  | from 1.1.2019 |
> |   52068870  | from 1.1.2022 |

## See also

[ARICOMA Solution](solutions.md)  
[SK Legislative Pack](sk-legislative-pack.md)
