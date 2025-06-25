---
title: ARICOMA SOLUTIONS - Připojené dokumenty | Microsoft Docs
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
# Document links
> Update 16.06.2023

The Document Links module allows you to link documents stored in SharePoint Online to any entity in D365 Business Central (BC). It also allows you to take full advantage of the potential of such a link in the ability to automatically populate SharePoint columns according to the context obtained from the particular entity in BC to which the user attaches the document.

Not only that, when saving files, the options in the area of naming the files saved to SharePoint are also very useful (typically to avoid overwriting a file with another with the same name). 

The location of saved documents in the library can also be controlled in a similar way. For example, sometimes it may be appropriate to always store files in a new folder based on the current month or year, while other times it may be a requirement to store files in a folder created just for a specific entity value (e.g. for a specific customer, item, etc.).

 Compared to the previously used SharePoint Publishing module, this is not addressed:
-	Document Types/Main Document
-	Selecting attribute values from a code list (table)
-	Searching documents by attributes
-	Document location by filename/file extension mask
-	Support for working with SharePoint lists for customer development


## Uploading a document to the BC library
I want to upload a document without binding.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Sales Invoices** and then choose the related link..
2.	On the Document Library page, click the dashed rectangle in the information window labeled Upload Document.
3.	Select the appropriate file from the file system and confirm by clicking Open.
4.	Alternatively, you can drag and drop the file with the mouse onto the rectangle in step 2.
5.	Verify that the value of the No. Of Items field has been incremented.
6.	Close the page. 


> [!NOTE]
> To automatically add library items in BC for new files/folders added directly to SharePoint (content synchronization), you can enable the SharePoint Automatic Synchronization option on the document library.

## Creating a folder in the BC library
In addition to uploading a file, it is also possible to create a folder directly in the BC library that is automatically created in SharePoint.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Document Libraries** and then choose the related link.
1.	Select the icon  , type Document Libraries, and then select the associated link.
2.	Run the Items action to open a list of library items recorded in BC.
3.	Use the existing folders shortcut to navigate to the desired level in the library (back using the Move Up button).
4.	Run the New Folder action, enter a name for the folder, and confirm OK.
5.	Verify that a new row has appeared with the Folder Item Type and the value entered in the Name field.
6.	Close the page.


![Příklad struktury](media/document-links-sample.png)


## Documents Links
If you want to find out to which all entities in BC the document is attached, do the following:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Document Libraries** and then choose the related link.
2.	Run the Items action to open a list of library items registered in BC.
3.	Navigate to the desired document and run the Item Detail action.
4.	On the Document Library Item Detail page, run the Document Links action to view all entities in BC to which the selected document is attached.
5.	Close the page. 

> [!NOTE]
> In the default view, the Primary Key Field Value 1 column is visible. If desired, you can use Page Customization to view up to 2 additional primary key levels.


## Renaming an item

To rename a file or folder, follow these steps:

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Document Libraries** and then choose the related link.
2.	Run the Items action to open a list of library items registered in BC.
3.	Navigate to the desired document and run the Item Detail action.
4.	On the Document Library Item Detail page, run the Rename Item action, enter a new item name, and confirm by pressing OK.
5.	Close the page. 




## Delete a file from the library
If you want to remove a file from the library, there are several ways to do so. One is to remove it directly from the document library items.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Document Libraries** and then choose the related link.
2.	Run the Items action to open a list of library items recorded in BC.
3.	Navigate to the desired document and run the Delete action.
4.	Confirm the query that appears if the file is attached to at least one entity in BC.
5.	Close the page. 

In normal use, it is possible to delete a document directly from individual parts of the BC.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Customers** and then choose the related link.
2.	Navigate to the record with the selected customer.
3.	In the Document Links facts window, navigate to the row with the attached file and run the Document Detail function.
4.	On the Document Library Item Detail page, click Delete at the top.


## To upload a file and attach it to a specific entity in BC
In the vast majority of files, this is how you add files, that is, saving a new file with a link to a specific record in BC. This is how it is added to the customer's card (see Adding Attached Documents to Selected BC Functionality).

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Customers** and then choose the related link.
2.	Navigate to the record with the selected customer.
3.	In the Document Links facts window, click the window title and run the Upload Document action.
4.	Select the appropriate file from the file system and confirm by clicking Open.
5.	Alternatively, you can drag and drop the file with the mouse onto the dashed rectangle.
6.	Verify that the file appears in the list in the facts window.

> [!NOTE]
> If there are multiple valid templates for the entity, the user is also prompted to select the desired publishing template under which the file should be saved and filed.

## Connect an existing file to another entity in BC
Sometimes a single file relates to multiple records (e.g. a framework agreement with a holding company relates to multiple customers). In this case, it is advisable to upload the file to the first record and just create a link to the others.

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Customers** and then choose the related link.
2.	Navigate to the record with the selected customer.
3.	In the Document Links facts window, click the title of the window and run the Link Document action.
4.	On the Document Library Items page, select the desired document and confirm OK.
5.	Verify that the file appears in the list in the fact window.


> [!NOTE]
> In the case of multiple valid templates for an entity, the user is also prompted to select the desired publishing template under which to register the file.

## Unlinking a file to an entity in BC
The following procedure only unlinks the file to the entity in BC, the file still remains stored in the library. 

1. Choose the ![Lightbulb that opens the Tell Me feature.](media/ui-search/search_small.png "Tell me what you want to do") icon, enter **Customers** and then choose the related link.
2.	Navigate to the record with the selected customer.
3.	In the Document Links facts window, navigate to the row with the attached file and run the *Delete Row action*.

## Quick view of the attached file  
Simply click on the file name in the Document Links facts window to view the file.

## Document library attributes
If you have set attributes on your library (see Setting Document Library attributes setup), it is most beneficial from the users' perspective to set them to auto-populate during file upload (see Autocompletion of Document library attribute setup). In this case, everything is done in the background, otherwise the user is presented with the Edit - Document Attributes page to fill in the value of the mandatory attribute.

To display optional attributes during upload, you must have at least one of the following set on the template:
- mandatory attribute without autocomplete
- a Show Dialog field with the value "Always"



## Viz také

[Document links - Setup](document-links-setup.md)  
[Productivity Pack](productivity-pack.md)
