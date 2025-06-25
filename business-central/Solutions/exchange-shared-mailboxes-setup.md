---
Title: ARICOMA SOLUTIONS - Sdílená poštovní schránka Exchange - Nastavení
Description: Slouží k importu příloh e-mailů z sdílené e-mailové schránky do Business Centralu, kde mohou být přílohy dále zpracovány.
Author: Ondřej.Slavík
Date: 23/03/2023
Product: dynamics365-business-central
Contentlocale: en-us
ms.search.keywords: Exchange, Shared, Mailbox, IN Buffer, Agent, E-Mail, Azure
---
# Exchange Shared Mailbox - Settings
> Update: 12.04.2023

Settings to read emails from shared mailboxes into IN Buffer.

## Prerequisites

An O365 account with "Global Admin" and "Exchange Admin" privileges is required. We refer to this account as **Admin Account** in the following.

Another account is used to log in to the shared mailbox, this account can be the aforementioned admin account or it can be another account without admin rights. This account should not be named after an employee, but should be a non-personal account, perhaps created for this purpose, such as exchangeBC@domena.cz. This account is referred to hereafter as the **Mailbox Account**.

## Mailbox Settings
We take inspiration from [Micorosoft](https://learn.microsoft.com/en-us/dynamics365/business-central/marketing-set-up-email-logging?tabs=new-experience). It can also be found in Business Central on the **Assisted Settings** page under the **Set Email Logging** link.

Switch the manual to settings via shared mailboxes by selecting the **New Experience** tab.

Following the instructions we must:
    
1. Create a shared mailbox
2. Assign an account to the mailbox that will be used to read (as mentioned above, this account does not have to be an administrator account)

### Create a shared mailbox
Log in to the exchange admin center at [this link](https://admin.exchange.microsoft.com/#). Use the admin account to do this.

Here in **Recipients/Mailboxes** we will add a shared mailbox. Fill in the Display Name, Address.

### Assign the account to the mailbox
Then we assign a mailbox account to the newly injected mailbox. This account no longer needs to have administrator rights.

## Link Settings
Next, we set up the application in the [Azure portal](https://portal.azure.com/) that will access the exchange. We will log in with an administrator account.

Again, follow the Microsoft instructions, chapter on connecting to Azure AD:

1. Create a new application registration.

2. in **Manage/Authentication** we add a *Redirect URL* of the form {service address}/OAuthLanding.htm, for example *http://localhost:8080/BC215/OAuthLanding.htm*.

3. Under **API Permissions**, add the delegated permission *Mail.ReadWrite.Shared* to the GRAPH API. Then we grant administrator approval.

4. Under **Certificates & Secrets** we add a new secret, we'll hide the *value* field somewhere.

5. In the report, we then copy the *Application ID*.

## Settings in BC
On the 52068375 **Exchange Mailboxes** page there are the following fields, at least fill in the ones in bold:
  
| Field Name | Description |
|------------|-------|
| **Code** | Mailbox Identification |
| **Email Address** | shared mailbox address |
| **Email Batch Size** | batch size for processing in one run, default is 50 |
| Enabled | whether the workload of this mailbox is enabled |
| **Client Id** | client (application) ID as displayed in the application registration on the Azure portal (above) |
| **Client Secret Key** | the value of the secret that was added to the application registration in the Azure portal (above) |
| Redirect URL | Redirect URL as added to the application registration in the Azure portal (above) |
| Attachment Filter | filter for attachments to be extracted (for example, if the value is **@*.pdf**, only PDF files will be extracted) |
| Default Task ID | Default task ID, written to IN Buffer |
| Default Source System ID | Default source system ID, written to IN Buffer |
| SM Template Code | SM Template Code |
| SM Status Code | SM Status Code |

When completed, check the **Enabled** box. The system will prompt us to log in with the admin account and then the mailbox account. With the admin account, we confirm all the permissions we have set for the application in the Azure portal.

Finally, we can use the **Validate Setup** action page to check that everything is set up correctly.

### Agent
Next, we create an agent that will perform the actual enumeration. Fill in the following values:

| Field Name | Value |
|------------|---------|
| Type | IN |
| Communication Type | Email |
| Communication Parameter | Mailbox Code, field *CODE* from the table above. |
| Codeunity agent ID | 52068378 |

The other fields on the agent are no longer setup specific to this functionality, see [Spooler Setup](spooler-setup.md) for more information on agents.

Now we can run the **Test Run** action on the mailbox page, which will read the mailbox once. When this happens, the attachments from the email are filed in the IN Buffer, where we can later use the **Batch ID** field to see if they came in different messages. At the same time, the extracted message is archived on the shared folder.

The original message can then be viewed in the IN Buffer via the **View Attachment** action, or the attachment can be downloaded using **Export Document**.

## Vizte Také
[Exchange Shared Mailbox](exchange-shared-mailboxes.md)  
[Productivity Pack](productivity-pack.md)