<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Exchange Shared Mailbox - Settings </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Exchange Shared Mailbox - Settings ">
    <meta name="generator" content="docfx 2.59.4.0">
    
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" href="../styles/docfx.vendor.css">
    <link rel="stylesheet" href="../styles/docfx.css">
    <link rel="stylesheet" href="../styles/main.css">
    <meta property="docfx:navrel" content="../TOC.html">
    <meta property="docfx:tocrel" content="TOC.html">
    
    
    
  </head>
  <body data-spy="scroll" data-target="#affix" data-offset="120">
    <div id="wrapper">
      <header>
        
        <nav id="autocollapse" class="navbar navbar-inverse ng-scope" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              
              <a class="navbar-brand" href="../index.html">
                <img id="logo" class="png" src="../logo.png" alt="">
              </a>
            </div>
            <div class="collapse navbar-collapse" id="navbar">
              <form class="navbar-form navbar-right" role="search" id="search">
                <div class="form-group">
                  <input type="text" class="form-control" id="search-query" placeholder="Search" autocomplete="off">
                </div>
              </form>
            </div>
          </div>
        </nav>
        
        <div class="subnav navbar navbar-default">
          <div class="container hide-when-search" id="breadcrumb">
            <ul class="breadcrumb">
              <li></li>
            </ul>
          </div>
        </div>
      </header>
      <div role="main" class="container body-content hide-when-search">
        
        <div class="sidenav hide-when-search">
          <a class="btn toc-toggle collapse" data-toggle="collapse" href="#sidetoggle" aria-expanded="false" aria-controls="sidetoggle">Show / Hide Table of Contents</a>
          <div class="sidetoggle collapse" id="sidetoggle">
            <div id="sidetoc"></div>
          </div>
        </div>
        <div class="article row grid-right">
          <div class="col-md-10">
            <article class="content wrap" id="_content" data-uid="">
<h1 id="exchange-shared-mailbox---settings">Exchange Shared Mailbox - Settings</h1>

<blockquote>
<p>Update: 12.04.2023</p>
</blockquote>
<p>Settings to read emails from shared mailboxes into IN Buffer.</p>
<h2 id="prerequisites">Prerequisites</h2>
<p>An O365 account with &quot;Global Admin&quot; and &quot;Exchange Admin&quot; privileges is required. We refer to this account as <strong>Admin Account</strong> in the following.</p>
<p>Another account is used to log in to the shared mailbox, this account can be the aforementioned admin account or it can be another account without admin rights. This account should not be named after an employee, but should be a non-personal account, perhaps created for this purpose, such as exchangeBC@domena.cz. This account is referred to hereafter as the <strong>Mailbox Account</strong>.</p>
<h2 id="mailbox-settings">Mailbox Settings</h2>
<p>We take inspiration from <a href="https://learn.microsoft.com/en-us/dynamics365/business-central/marketing-set-up-email-logging?tabs=new-experience">Micorosoft</a>. It can also be found in Business Central on the <strong>Assisted Settings</strong> page under the <strong>Set Email Logging</strong> link.</p>
<p>Switch the manual to settings via shared mailboxes by selecting the <strong>New Experience</strong> tab.</p>
<p>Following the instructions we must:</p>
<ol>
<li>Create a shared mailbox</li>
<li>Assign an account to the mailbox that will be used to read (as mentioned above, this account does not have to be an administrator account)</li>
</ol>
<h3 id="create-a-shared-mailbox">Create a shared mailbox</h3>
<p>Log in to the exchange admin center at <a href="https://admin.exchange.microsoft.com/#">this link</a>. Use the admin account to do this.</p>
<p>Here in <strong>Recipients/Mailboxes</strong> we will add a shared mailbox. Fill in the Display Name, Address.</p>
<h3 id="assign-the-account-to-the-mailbox">Assign the account to the mailbox</h3>
<p>Then we assign a mailbox account to the newly injected mailbox. This account no longer needs to have administrator rights.</p>
<h2 id="link-settings">Link Settings</h2>
<p>Next, we set up the application in the <a href="https://portal.azure.com/">Azure portal</a> that will access the exchange. We will log in with an administrator account.</p>
<p>Again, follow the Microsoft instructions, chapter on connecting to Azure AD:</p>
<ol>
<li><p>Create a new application registration.</p>
</li>
<li><p>in <strong>Manage/Authentication</strong> we add a <em>Redirect URL</em> of the form {service address}/OAuthLanding.htm, for example <em>http://localhost:8080/BC215/OAuthLanding.htm</em>.</p>
</li>
<li><p>Under <strong>API Permissions</strong>, add the delegated permission <em>Mail.ReadWrite.Shared</em> to the GRAPH API. Then we grant administrator approval.</p>
</li>
<li><p>Under <strong>Certificates &amp; Secrets</strong> we add a new secret, we'll hide the <em>value</em> field somewhere.</p>
</li>
<li><p>In the report, we then copy the <em>Application ID</em>.</p>
</li>
</ol>
<h2 id="settings-in-bc">Settings in BC</h2>
<p>On the 52068375 <strong>Exchange Mailboxes</strong> page there are the following fields, at least fill in the ones in bold:</p>
<table>
<thead>
<tr>
<th>Field Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Code</strong></td>
<td>Mailbox Identification</td>
</tr>
<tr>
<td><strong>Email Address</strong></td>
<td>shared mailbox address</td>
</tr>
<tr>
<td><strong>Email Batch Size</strong></td>
<td>batch size for processing in one run, default is 50</td>
</tr>
<tr>
<td>Enabled</td>
<td>whether the workload of this mailbox is enabled</td>
</tr>
<tr>
<td><strong>Client Id</strong></td>
<td>client (application) ID as displayed in the application registration on the Azure portal (above)</td>
</tr>
<tr>
<td><strong>Client Secret Key</strong></td>
<td>the value of the secret that was added to the application registration in the Azure portal (above)</td>
</tr>
<tr>
<td>Redirect URL</td>
<td>Redirect URL as added to the application registration in the Azure portal (above)</td>
</tr>
<tr>
<td>Attachment Filter</td>
<td>filter for attachments to be extracted (for example, if the value is <strong>@*.pdf</strong>, only PDF files will be extracted)</td>
</tr>
<tr>
<td>Default Task ID</td>
<td>Default task ID, written to IN Buffer</td>
</tr>
<tr>
<td>Default Source System ID</td>
<td>Default source system ID, written to IN Buffer</td>
</tr>
<tr>
<td>SM Template Code</td>
<td>SM Template Code</td>
</tr>
<tr>
<td>SM Status Code</td>
<td>SM Status Code</td>
</tr>
</tbody>
</table>
<p>When completed, check the <strong>Enabled</strong> box. The system will prompt us to log in with the admin account and then the mailbox account. With the admin account, we confirm all the permissions we have set for the application in the Azure portal.</p>
<p>Finally, we can use the <strong>Validate Setup</strong> action page to check that everything is set up correctly.</p>
<h3 id="agent">Agent</h3>
<p>Next, we create an agent that will perform the actual enumeration. Fill in the following values:</p>
<table>
<thead>
<tr>
<th>Field Name</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr>
<td>Type</td>
<td>IN</td>
</tr>
<tr>
<td>Communication Type</td>
<td>Email</td>
</tr>
<tr>
<td>Communication Parameter</td>
<td>Mailbox Code, field <em>CODE</em> from the table above.</td>
</tr>
<tr>
<td>Codeunity agent ID</td>
<td>52068378</td>
</tr>
</tbody>
</table>
<p>The other fields on the agent are no longer setup specific to this functionality, see <a href="spooler-setup.html">Spooler Setup</a> for more information on agents.</p>
<p>Now we can run the <strong>Test Run</strong> action on the mailbox page, which will read the mailbox once. When this happens, the attachments from the email are filed in the IN Buffer, where we can later use the <strong>Batch ID</strong> field to see if they came in different messages. At the same time, the extracted message is archived on the shared folder.</p>
<p>The original message can then be viewed in the IN Buffer via the <strong>View Attachment</strong> action, or the attachment can be downloaded using <strong>Export Document</strong>.</p>
<h2 id="vizte-také">Vizte Také</h2>
<p><a href="exchange-shared-mailboxes.html">Exchange Shared Mailbox</a><br>
<a href="productivity-pack.html">Productivity Pack</a></p>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/ARICOMA-D365BC/AC-IB-dynamics365smb-docs/blob/master/business-central/Solutions/exchange-shared-mailboxes-setup.md/#L1" class="contribution-link">Improve this document</a>
                  </li>
                </ul>
              </div>
              <nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix" id="affix">
                <h5>In this article</h5>
                <div></div>
              </nav>
            </div>
          </div>
        </div>
      </div>
      
      <footer>
        <div class="grad-bottom"></div>
        <div class="footer">
          <div class="container">
            <span class="pull-right">
              <a href="#top">Back to top</a>
            </span>
            
           <span><a href="https://www.aricoma.com/docs/en-us/dynamics365/business-central/Solutions/solutions.html"><strong>ENGLISH</strong><strong>/</strong><a href="https://www.aricoma.com/docs/cs-cz/dynamics365/business-central/Solutions/solutions.html"><strong>CZECH</strong></a></a></span>
          </div>
        </div>
      </footer>
    </div>
    
    <script type="text/javascript" src="../styles/docfx.vendor.js"></script>
    <script type="text/javascript" src="../styles/docfx.js"></script>
    <script type="text/javascript" src="../styles/main.js"></script>
  </body>
</html>