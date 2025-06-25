---
title: ARICOMA SOLUTIONS - Připojené dokumenty - Nastavení | Microsoft Docs
description: Document links
author: kunes
ms.service: dynamics365-business-central
ms.topic: article
ms.devlang: na
ms.tgt_pltfrm: na
ms.workload: na
ms.search.keywords: Czech, document links, additional functions
ms.author: v-makune
---
# Document links - setup
> Update 16.06.2023

The following lines describe settings from those necessary for the actual commissioning (Application Registration in AAD, SharePoint Azure AD settings) to settings covering special customer requirements (e.g. when storing files or recording additional attributes).

## Registrace aplikace v Azure Active Directory
The first task is to use Azure portal to register an application for Business Central on your Azure AD tenant. As part of the registration, you'll also give the relevant services access to the application. The purpose of registration is to ensure Business Central and the services know each other's Azure Active Directory (Azure AD) details.

1. Sign in to the Azure portal and register an application for Business Central in Azure Active Directory tenant.
    - Follow the general guidelines at Register your application with your Azure Active Directory tenant. 
    When you add an application to an Azure AD tenant, you must specify the following information:

    
    |Settings|Description|
    |-|-|
    |Name|Specify a name for your Business Central solution, such as Business Central - Sharepoint.|
    |Supported account types|Select Accounts in this organizational directory only.|
    |Redirect URI|Set the first box to Web to specify a web application. Enter the URL for your Business Central browser client, followed by OAuthLanding.htm, for example:  https://businesscentral.dynamics.com/OAuthLanding.htm or https://MyServer/BC200/OAuthLanding.htm|

    - When completed, an Overview displays in the portal for the new application.
    
    - Copy the** Application (Client) ID** that was assigned the application, the **OAuth 2.0 authorization endpoint (v2)** and also **Redirect URL** that you specified. You'll use this information later.

2.	Create a client secret for the registered application
    - Follow the general guidelines at Add credentials to your web application.
    - Before you leave the Certificates & secrets page, copy the secret's value to a temporary location. The value isn't accessible once you leave the page. You'll use this key later in your client application code.
3.	Grant the registered application delegated permission to access the required Sharepoint service. 

**From the registered application's overview page, select API permissions > Add a permission. Then, use the Request API permissions pane to locate the API and add permissions. For more information, see Add permissions to access web APIs in the Azure documentation.**

    Následující tabulka vám pomůže nastavit minimální oprávnění:

|API|Permission name|Type|Description|
|-|-|-|-|
|Microsoft Graph|User.Read.All|Delegated|Read and write items in all site collections|
||Sites.ReadWrite.All|Delegated|Edit or delete items in all site collections|
||Sites.Read.All|Delegated|Read items in all site collections|
||Files.ReadWrite.All|Delegated|Have full access to all files user can access|

For the case of saving under an application account, you need to add the following::

|API|Název oprávnění|Typ|Popis|
|-|-|-|-|
|Microsoft Graph|User.Read.All|Application|Read all users' full profiles|
||Sites.Selected|Application|Access selected site collections|

## Sharepoint Azure AD Apps

> [!WARNING] 
> Perform the initial setup using assisted setup, which guides you through the SharePoint Azure AD Apps setup and also adds other useful settings (such as transformation rules, see below).

For each SharePoint site that you will connect to Business Central, you need to define a connection:
1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Sharepoint Azure AD Apps** and then choose the related link.
2.	On the Sharepoint Azure AD App page, enter a Code and Description for the new record.
3.	In the **Application/Client ID** field, enter the application ID from the previous chapter.
4.	In the **Client Secret** field, type the key from the previous chapter.
5.	In the **Authorization URL** field, enter the URL from the previous chapter.
6.	In the **Redirect URL** field, enter the URL from the previous chapter.
7.	In the **Grant Type** field, select how the credentials are passed to the client side. (Authorization Code - Access to SharePoint will be under the user's permissions in the BC; Client Credentials - Access to SharePoint will be under the application's AAD permission).
8.	In the **No UI Grant Type** field, select Client Credentials as the method of passing credentials for jobs running in the background (typically using the Job Queue, etc.).
9.	Run the Sign In action to verify the functionality of the link.
10.	Close the page.


## Document Links setup
You must enable the module functionality globally:
1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Document Links Setup** and then choose the related link.
2.	Activate the **Enabled** flag.
3.	**BC onlin**e: If the system does not find an active (or terminated) subscription for this module, it prompts the user to create a trial subscription (see AC Monetization documentation).
**BC OnPrem**: Read the Third Party Terms and Conditions and confirm your acceptance with the Accept button.
4.	Close the page.


## Document libraries
1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Document Libraries** and then choose the related link.
2.	On the Document Libraries page, run the *New action*.
3.	On the Document Library page, enter the Code and Name of the new library. 
4.	In the **Library Type** field, select the SharePoint value.
5.	In the **SharePoint Azure AD App** field, select from the defined applications.
6.	Run the Set up SharePoint Drive action. On the Select SharePoint Libraries page, select the desired library.
7.	Close the page.


> [!NOTE]
> When you enable "Require document reservation before editing" on the site, then you need to have **Require Check Out** enabled on the library.

> [!NOTE]
> If you need to use date and time information from file metadata, you must set the **SharePoint TimeZone** field. This will ensure consistency between this information from SharePoint and from BC.

## Adding Document Links to selected BC functionality
### Step 1 - Add to page as Pageextension

A "DocumentLinksFactBox_ach" must be added to all pages where the functionality is to be available. If you are not sure how to create a pageextension (see the following code), ask your BC partner.

    {
        layout
        {
            addlast(factboxes)
            {
                part(DocumentLinksFactBox_ach; "Document Links FactBox_ach")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
            }
        }

        trigger OnAfterGetCurrRecord()
        begin
            UpdateDocumentLinksFactBox();
        end;

        local procedure UpdateDocumentLinksFactBox()
        begin
            CurrPage.DocumentLinksFactBox_ach.Page.SetContext(Rec);
        end;
    }


### Step 2 - Basic Document Links Template Setup
The following setup is for the Customer entity, where the Customers and Customer Card pages are basically supplemented with the necessary facts window.
1.	Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Document Links Templates** and then choose the related link.
2.	On the Document Links Templates page, run the New action.
3.	On the Document Links Template page, enter the Code and Description for the new template.
4.	In the **Table ID** field, type 18.
5.	In the **Library Code** field, select the SharePoint library.
6.	Switch the **Enabled** flag to Yes.
7.	Close the page.
8.	Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Customers** and then choose the related link.
9.	Run the Customize action.
10.	Locate the facts window labeled Document Links, left-click, and select View.
11.	For any customer, run the View action.
12.	Find the fact window titled Document Links, left-click, and select View.
13.	Stop Customization mode by clicking the red Done button.


## Different templates for filtered records
If you need to have a template defined only for certain records, or different templates for differently filtered records, you can set a table filter on the template.

Example - template for domestic customers:


1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Document Links Templates** and then choose the related link.
2.	Create a new document links template by following the procedure for basic setup.
3.	Expand AssistEdit next to the Table Filter field (visible by clicking Show More).
4.	On the Edit - Table Filter page, enter "21" in the Field Number field and "TUZ*" in the Filter field.
5.	Close the page.


> [!NOTE]
> Creating new templates can be made easier by using the Copy Template action available on the Template tab.


## Advanced file location options
You can flexibly set up file storage rules on the template when connecting to entities.

### **Example - customer contracts are stored in a specified subfolder:**
1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Document Links Templates** and then choose the related link.
2.	Create a new document links template for customer contracts following the procedure for basic setup.
3.	Next, on the Document Links Template page, click AssistEdit next to the **Default Folder** field.
4.	On the Folder Selection page, select an existing folder or create a new folder using the New Folder (or New Subfolder) function, and then confirm the selection by clicking OK.
5.	In the **Default Folder** field, check the path (e.g. "/ZAK/Contracts")
6.	Close the page.


### Example - each customer automatically has its own folder and in it a subfolder for contracts:**
1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Document Links Templates** and then choose the related link.
2.	Create a new document links template for customer contracts following the procedure for basic setup.
3.	Run the *Template Parameters action*. 
4.	On the Document Links Template Parameters page, create a new row for the parameter corresponding to the customer number (Parameter code = CISLO-ZAK; Description = Customer number; Data source = Source Table Field; Source Table Field No. = 1).
5.	Create another new row for the parameter corresponding to the customer name (Parameter code = NAME-ZAK; Description = Customer name; Data source = Source Table field; Source Table Field No. = 2).
6.	To remove any unauthorized characters in the customer name, select "NAZEV_SHP" in the T**ransformation Rule** field.
7.	Close the Document Links Template Parameters page.
8.	On the Document Links Template page, enter a value in the Relative Path Mask field (visible by clicking Show More): {{CISLO-ZAK}}-{{NAZEV-ZAK}}/Smlouvy
9.	Switch the **Create folder If Not Exists** flag to Yes.
10.	Close the page.


> [!NOTE]
> In addition to the predefined data sources for the template parameters, you can have a custom function create the required string. This is the Custom Function data source, for which you then assign the number of the prepared codeunity in the **Custom Function ID** field.

### Example - files are saved with a generated filename:**
1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Document Links Templates** and then choose the related link.
2.	Create a new document links template for customer contracts following the procedure for basic setup.
3.	Run the Template Parameters action. 
4.	On the Document Links Template Parameters page, create a new row for the parameter corresponding to the number in the number series (Parameter Code = CISLO-CR; Description = Document Number; Data Source = Number Series; in the Number Series field, select as desired).
5.	Create another new row for the parameter corresponding to the customer name (Parameter code = NAZEV; Description = File name; Data source = File name; Transformation rule = NAZEV_SHP).
6.	Create another new row for the parameter corresponding to the customer name (Parameter code = File extension; Description = File extension; Data source = File extension).
7.	Close the Document Links Template Parameters page.
8.	On the Document Links Template page, enter a value in the **Document Name Mask** field (visible by clicking Show More): {{CISLO-CR}}-{{NAZEV}}.{{PRIPONA}}
9.	Close the page.


## Advanced permission settings
In some cases, you need to restrict user access to templates. There is an option to define nominally the users who should have access:
1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Document Links Templates** and then choose the related link.
2.	Select the template and run the User Permissions action.
3.	On the Document Links Template Users page, select the user with access.
4.	Close the page.

## Document Library attributes setup
Most often, the attributes functionality in BC is used to add metadata (columns) to a file stored in a SharePoint library, either automatically or manually (see Create a column in a list or library - Microsoft Support).

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Document Libraries** and then choose the related link.
2.	On the Document Libraries page, select the library and run the Document Attributes action.
3.	On the Document Library Attributes page, run the Add SharePoint column action.
4.	On the Select SharePoint Library Column page, select the SharePoint library column that you want to maintain through BC.
5.	Repeat the previous step until you have added all the required SharePoint columns.
6.	Close the page.


> [!NOTE]
> If the SharePoint column value definitions (primarily the Option type) are modified over time, you must reflect these changes manually in the BC. 

Je-li požadován atribut pro využití pouze na úrovni BC, je možné jej definovat. Následující příklad popisuje jeden povinný atribut pro evidenci jména prodejce
1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Document Libraries** and then choose the related link.
2.	On the Document Libraries page, select the library and run the Document Attributes action.
3.	On the Document Library Attributes page, create a new row for the attribute recording the customer rating (Name = Salesperson; Data Type = Text; Mandatory = Yes).
4.	On the Document Library Attributes page, create a new row for the attribute recording the customer rating (Name = Rating; Data Type = Option; Mandatory = No).
5.	For the Rating attribute, run the Attribute Values action.
6.	On the Document Library Attribute Values page, create three rows with the values Positive, Neutral, Negative, and close the page.
7.	Close the page.


> [!NOTE]
> The value in the SharePoint Attribute column indicates which type of attribute it is.

## Autocompletion of document library attributes setup
The following scenario builds on the previous chapter, that is, we will automatically populate one of the defined document library attributes when we upload a file.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Document Links Templates** and then choose the related link.
2.	Select a template for connecting documents to customers.
3.	Run the Template Parameters action. 
4.	On the Document Links Template Parameters page, create a new row for the parameter corresponding to the salesperson name defined on the customer card (Parameter Code = SPERSON; Description = Salesperson’s Name; Data Source = Related Table Field; Related Table ID = 13; Related Table Field No. = 1; in the Table Relation field, define Code = Salesperson Code).
5.	Close the page.
6.	On the Document Connection Template page, in the Document Attribute Mapping section, set the library attribute for the salesperson name to auto-populate (Attribute Name = Salesperson; Mapping to Parameter = SPERSON).
7.	Close the page.


> [!NOTE]
> If you have multiple attributes defined on a library, you can use the Update Library Attributes action. This action will add any missing attributes defined for the associated Document Library to the mapping rows.

## Implementing Custom Function

This provides instructions for creating a custom function to define the attributes described in the Advanced file location options chapter.

    {
        TableNo = "Doc.LinkTemplate Parameter_ach";

        trigger OnRun()
        begin
            // Input/Output of this function is the global variable Rec that contains the current record of the template parameter whose value is to be evaluated
            // The field Rec."Source RecordId" contains the id of the record to which the document is linked
            // The field Rec."Document FileName" contains the name of the document file that is linked

            // Here write your code to evaluate the parameter value
            // ...

            // Finally return the value formatted as Text data type in the Rec."Value" field
            Rec."Value" := 'Result value';
        end;
    }


## See Also

[Document links](document-links.md)  
[Productivity Pack](productivity-pack.md)
