---
title: Analytics Suite – Setup
description: Setup guide for the Analytics Suite module for Dynamics 365 Business Central
author: Makowka-Tomas
date: 01/06/2025
reviewer: janousek
ms.service: dynamics-365-business-central
ms.search.keywords: Analytics Suite, Power BI, data, business intelligence
---

# Analytics Suite – Setup

> Updated: 01/06/2025

The **Analytics Suite** module enhances data analysis and key performance indicators visualization capabilities within Dynamics 365 Business Central. To ensure proper functionality, follow these setup steps:

- **Install the extension in Business Central**
- **Configure Analytics Suite in Business Central**
- **Connect the Power BI application to your data**

## Install the extension in Business Central

1. Sign in to your Business Central environment.
2. Open **AppSource** and search for **Analytics Suite**.

![Searching for the extension in AppSource](media/analytics-suite-app-source.png)

3. Select the **Analytics Suite for Business Central** extension and click **Install app**.

![Installing the extension](media/analytics-suite-app-install.png)

4. Follow the installation wizard to complete the setup.

![Installation wizard](media/analytics-suite-app-install2.png)

## Configure Analytics Suite in Business Central

1. Select the icon ![Lightbulb icon to open Tell Me](media/ui-search/search_small.png "Tell me what you want to do"), type **Analytics Suite Setup**, and then select the related link.
2. On the **Analytics Suite Setup** page, activate the module by checking the **Enabled** checkbox.

![Analytics Suite setup](media/analytics-suite-setup-bc.png)

3. Select the icon ![Lightbulb icon to open Tell Me](media/ui-search/search_small.png "Tell me what you want to do"), type **Company Information**, and then select the related link.
4. On the **Company Information** page (and for other companies you want to analyze in Analytics Suite), enable the option **Include in Analytics Suite**.

![Enable Analytics Suite](media/analytics-suite-company-information.png)

## Connect the Power BI application to your data

To display reports and dashboards correctly, you need to link the Power BI application to your Business Central environment:

1. Go to [powerbi.com](https://powerbi.com) and sign in.
2. In the left-hand menu, select **Apps**.
3. Click **Get Apps**.

![Get Apps](media/analytics-suite-get-apps.png)

4. In the search box, type **Analytics Suite** and select the app by **Aricoma**.

![Power BI application](media/analytics-suite-application.png)

5. Click **Get it now** and install the application.

![Get it now](media/analytics-suite-get-it-now.png)

6. Open the **Analytics Suite** app in the relevant workspace.

![App](media/analytics-suite-app-list.png)

7. Click **Connect your data**.

![Connect data](media/analytics-suite-connect-data.png)

8. In the **EnvironmentName** field, enter the name of your Business Central environment.

## See also

[Analytics Suite – Overview](analytics-suite.md)  
[Streamline Tools](streamlinetools.md)
