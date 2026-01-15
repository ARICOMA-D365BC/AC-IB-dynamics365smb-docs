---
title: CZ Banking Extension - API connector settings
description: CZ Banking Extension - API connector settings
author: RobertJelen
date: 05/30/2025
reviewer: janousek
ms.service: dynamics-365-business-central
ms.search.keywords: banking, finance, czech, API
---
# API connector settings

> Update 10.01.2026

## CSOB API connector

### Launch of the ČSOB Business Connector service

The steps to get the service up and running are as follows:

- Enabling the CSOB Business Connector service for the CEB service contract,
- obtaining a certificate from a certification authority or directly from the bank,
- registering the certificate for use in the CSOB Business Connector service in the portal,
- configuring the CSOB Business Connector service in the portal,
- setting up the client application in Business Central

**Enabling the CSOB Business Connector service for the CEB service contract**  

Disabling or enabling the CSOB Business Connector service can be done in the portal or at a bank branch

**Obtaining a certificate**  

The ČSOB Business Connector service enables the use of certificates issued by certification authorities I. Certification Authority and PostSignum. Only so-called Server Commercial Certificates are suitable for use in the CSOB Business Connector service and must enable so-called Client Authentication.

The certificate can also be obtained directly from the bank, which can be done in basically 2 ways, either

- by Windows means (e.g. with the help of an IT person)
  - Manually creating a certificate request on the client computer (e.g. using the Windows tool *certmgr.msc*),
  - Submitting a certificate request and issuing the certificate (CEB -> Business Connector -> *Request Certificate* and then downloading the certificate by selecting *Download*)
  - Installing the issued certificate on the client computer (e.g. using the Windows *certmgr.msc* tool)
- or using the *CSOB Business Connector* application (obtaining a communication certificate is described in the [csob-business-connector-implementacni-prirurucka.pdf](https://www.csob.cz/documents/10710/15532355/csob-business-connector-prirucka.pdf?v2401) manual). This is
  - installation of the CSOB Business Connector application on a computer (chapter 2)
  - obtaining a communication certificate (chapter 3).

> [!TIP]
> The CSOB Business Connector application will not be used for normal work. However, it is recommended to set up a certificate expiry notification (see the guide in the chapter Renewing the communication certificate).

**Certificate registration**  

In the case of a certificate from a bank (see above), it is automatically registered.

**Configuring the CSOB Business Connector service in the portal**  

In the portal, it is necessary to enable the required operations that the client will use using the CSOB Business Connector. In our case, these are *Download statements for specific accounts* and *Send signed payment order files for specific accounts*.

**Setting up a client application in Business Central**  

To set up Business Central, you need to download a communication certificate in pfx format:

1. Press Windows key + R and type certmgr.msc in the window that opens and press OK.
2. In the certmgr tool, expand Personal on the left side and find the certificate line in the list. It will have the CEB Business Connector CA issuer and the subject name you selected.
3. Press the right mouse button on the certificate and select All Tasks and Export... from the context menu.
4. In the certificate export wizard, select Yes, export private key and then export to a PKCS #12 file with a .pfx extension. You will need the password you entered in the next step.

The next step is to set up access in Business Central:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Clients of CSOB CEB** and then choose the related link.
2. Enter "CSOB" in the **Code** field on the new line.
3. Enter e.g. "CSOB API" in the **Description** field.
4. Leave the value "Production" in the **API Environment** field.
5. In the **Contract Number** field, enter the value from the API access contract you signed with the bank.
6. In the **Available for** field, leave the value "Company" to set up common access for all authorized users of the module.
7. Run the *Upload Certificate* action and select the certificate file in pfx format.
8. Enter a password for the certificate.

> [!TIP]
> If you want to determine access according to the user's login, each user must make the above-mentioned settings of the ČSOB CEB Client. In the **Available for** field, select the value "User".
> [!WARNING]
> Only use the **Enable activity log** option in justified cases for a limited period of time, as the log contains sensitive data and may be accessed by users who should not see it.

### Specific parameters for ČSOB API connector

The following parameters must be added to the Advanced Settings if you want to use the CSOB API connector to import bank statements:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Bank Export/Import Settings** and then choose the related link.
2. Navigate to the selected Import type row.
3. Run the *Advanced Settings* action.
4. In the **Bank Statement Provider** field, select "CSOB CEN Connector".
5. In the **CSOB CEB Client Code** field, select the client code defined in the previous section.
6. In the **CSOB CEB File Format** field, select the GPC option representing the ABO format.
7. In the **Content Encoding** field, add a value - see [Setting the encoding for import](ext-cz-banking-setup.md/#Import-encoding-settings)
8. In the **Processing Procedure ID** field, check that the value 52057431 (Bank Stmt.Imp.-ABO Acb) has been added.

The following parameters must be added to the Advanced Settings if you want to use the CSOB API connector to export payment orders:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Bank Export/Import Settings** and then choose the related link.
2. Navigate to the selected Export type row.
3. Run the *Advanced Settings* action.
4. In the **Bank Statement Provider** field, select "CSOB CEN Connector".
5. In the **CSOB CEB Client Code** field, select the client code defined in the previous section.
6. In the **CSOB CEB File Format** field, select the KPC option representing the ABO format.
7. In the **Processing Procedure ID** field, check that the value 52057438 (Paym.Order Export-ABO acb) has been added.

## KB API connector

### Launch of the API Business suite service

In order to use the [API Business suite](https://www.kb.cz/cs/kbapi/sluzby-kb-api/api-business-suite) service from Komerční banka, you must have activated the selected internet banking application (*Moje Banka Business*, or *Profibanka*, or *Mobilní banka Business*).
The basic steps to make the API interface operational are:

- The company activates the API Business Suite service in KB
- The company applies to Aricoma for an Authorization Key, which will be generated specifically for the company and thanks to which Aricoma will register the KB API connector with KB.
- The company sets up the module in Business Central
- The company gives consent to the Business Central application to download data from KB and selects the bank accounts to which Business Central will have access

**Obtaining the Authorization Key**
Contact us by email at <bc_sales@aricoma.com>. All we need is your company name, and we will send you an Authorization Key in reply. This is for your company's use only and must not be used by anyone else.

**Setting up the module in BC**
The next step is to set up access in Business Central:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **KB API Clients** and then choose the related link.
2. On the KB API Clients page, enter "KB" in the **Code** field on the new line.
3. For example, type "KB API" in the **Description** field.
4. Leave the value "Production environment" in the **API** field.
5. In the **Authorization Key** field, enter the value you received from Aricoma (see previous paragraph).
6. Run the *Authorize Client* action; success will be indicated by a change in the **Client Is Authorized** flag.

> [!WARNING]
> Only use the **Enable activity log** option in justified cases for a limited period of time, as the log contains sensitive data and may be accessed by users who should not see it.

**Granting consent**  

1. On the KB API Clients page, run the *Authorize Client* action.
2. In the new window that automatically opens, the bank's dialogue will appear, where after logging in you will be asked to give consent to use the "Aricoma KB Connector" application.
3. Immediately afterwards, another login prompt will appear, after which you will select the bank accounts to which "Aricoma KB connector" should have access.

<!-- ### Specific parameters for KB API connector
-->

## Erste API connector

### Activating the Premium API service

To activate the API interface, you need to

- register on the Erste Developer Portal (EDP),
- create an application on the portal,
- request access for the application to the production environment, and
- set up the module in Business Central.

**Company registration in EDP**  

When registering, fill in the required information about your company, see [Registration procedure](https://developers.erstegroup.com/docs/tutorial/step-by-step#registrujte-se).

**Creating an application**  

You need to create a new "application" in your organization and connect it to the bank, see [procedure](https://developers.erstegroup.com/docs/guides/general-user-manual-application/#p-ipojen-k-bance). Fill in the following parameters:

| Property         | Value           |
| ---------------  | --------------- |
| Application name | Aricoma Erste API Connector |
| Type             | Web             |
| Platform         | Server          |
| Language         | Other           |
| Application use  | Final API Consumer |

Banks:

- Česká spořitelna, a.s.

Connecting to the API:

- Select *Premium - Accounts API* and *Premium - Payments API*
- Enable OAuth2

**Request for access to the production environment**  

If everything is set up correctly (and confirmed by the bank), you can generate access data on the Production tab.

**Setting up the module in BC**
The next step is to set up access in Business Central:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Erste API Clients** and then choose the related link.
2. On the Erste API Clients page, enter "ČS" in the **Code** field on a new line.
3. In the **Description** field, enter, for example, "ČS API".
4. In the **Connected Bank** field, select "Česká spořitelna".
5. In the **API Environment** field, select the value "Production environment".
6. In the **API Key** field, enter the value obtained from the portal (see previous paragraph).
7. In the **Client ID** field, enter the value obtained from the portal (see previous paragraph).
8. In the **Client Secret** field, enter the value obtained from the portal (see previous paragraph).
9. In the **Authorization Validity** field, you can change the authorization validity to a period shorter than the maximum allowed period of 180 days.
10. Run the *Authorize Client* action; success will be indicated by a change in the **Client Is Authorized** flag.

> [!WARNING]
> Only use the **Enable activity log** option in justified cases for a limited period of time, as the log contains sensitive data and may be accessed by users who should not see it.

## Raiffeisen API connector

### Activating the RB Premium API service

To activate the API interface, you need to

- create client's certificate and
- set up the module in Business Central.

**Creating a client certificate**  

In the banking application, in the Settings section (gear icon), you can create a certificate as follows:

1. In the left menu, select Certificate Management > New Certificate.
2. On the *Certificate Generation* form, enter:
    - Certificate name - for your information (e.g., "Business Central API")
    - Certificate password - enter a strong password and make a note of it (you will need it for further settings in Business Central)
    - Password again - repeat the password
    - Account selection - select the accounts you want to connect to Business Central using the API; for each one, select whether you want to allow only downloading *Transaction history* or also sending *Bulk payments*.
    - Confirm your agreement with the terms of use of the certificate and select *Continue*.
3. On the *Generate Certificate* form, click the *Sign* button to start the approval process via the mobile app.
4. After approval on the *Certificate Generated* page, start the *Download Certificate* action.

**Setting up a client application in Business Central**  

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Raiffeisen API Clients** and then choose the related link.
2. On the Raiffeisen API Clients page, enter "RB" in the **Code** field on a new line.
3. Enter e.g. "Raiffeisen API" in the **Description** field.
4. Leave the value "Production" in the **API Environment** field.
5. In the **Available for** field, leave the value "Company" to set up common access for all authorized users of the module.
6. Run the *Upload Certificate* action and select the certificate file in pfx format.
7. Enter a password for the certificate.

> [!TIP]
> If you want to determine access according to the user's login, each user must make the above-mentioned settings of the Raiffeisen Client. In the **Available for** field, select the value "User".
> [!WARNING]
> Only use the **Enable activity log** option in justified cases for a limited period of time, as the log contains sensitive data and may be accessed by users who should not see it.

### Specific parameters for Raiffeisen API connector

The following parameters must be added to the Advanced Settings if you want to use the Raiffeisen API connector to import bank statements:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Bank Export/Import Settings** and then choose the related link.
2. Navigate to the selected Import type row.
3. Run the *Advanced Settings* action.
4. In the **Bank Statement Provider** field, select "Raiffeisen Bank API".
5. In the **Raiffeisen API Client Code** field, select the client code defined in the previous section.
6. In the **Raiffeisen Statement Format** field, select the MT940 option representing the Multicash format.
7. In the **Processing Procedure ID** field, check that the value 52057627 (RB Bank Stmt.Imp.-MT940 Acb) has been added.

The following parameters must be added to the Advanced Settings if you want to use the Raiffeisen API connector to export payment orders:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Bank Export/Import Settings** and then choose the related link.
2. Navigate to the selected Export type row.
3. Run the *Advanced Settings* action.
4. In the **Bank Statement Provider** field, select "Raiffeisen Bank API".
5. In the **Raiffeisen API Client Code** field, select the client code defined in the previous section.
6. In the **Raiffeisen Payment Format** field, select the ABO-KPC option representing the ABO format.
7. In the **Processing Procedure ID** field, check that the value 52057625 (RB Paym.Order Export-ABO Acb) has been added.

## Importing individual transactions

If the banking API supports the option to download individual payments, the "Individual transactions" option is available in the field defining the statement format on the *Advanced statement import settings* tab. If you select this option, the correct processing procedure will be set, similar to when selecting the format for daily statements.

If you use automated statement creation using [import from the Central Tray](cz-banking-extension-setup#setting-up-import-from-the-central-tray), you must also set the **Import individual transactions** flag on the tabs of all required bank accounts. This allows you to import individual transactions for a CZK account and bank statements for other currencies of the same account.

> [!NOTE]
> The Number of days of transaction history field on the API client card refers to a transaction, which can be a single payment or a monthly statement. If you combine significantly different approaches to downloading statements within a single API (e.g., some accounts weekly and others after individual transactions), we recommend creating separate API clients, leaving the Number of days of transaction history at 5 for downloading individual payments, but setting the value to 10, for example, for weekly statement processing.

**See also**  

[CZ Banking Extension Setup](cz-banking-extension-setup.md)  
[CZ Banking Extension](cz-banking-extension.md)  
[Financial Pack](finance-pack.md)  
