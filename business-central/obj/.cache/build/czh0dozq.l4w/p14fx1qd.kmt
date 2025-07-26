<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Notificaiton setup | Microsoft Docs </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Notificaiton setup | Microsoft Docs ">
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
<h1 id="notifications---settings">Notifications - Settings</h1>

<blockquote>
<p>Update: 12.12.2024</p>
</blockquote>
<p>The <strong>Notifications</strong> module enables <strong>system notifications</strong> for data and process statuses recorded in Microsoft Dynamics 365 Business Central. Notification works both internally in the system environment and externally in the form of an e-mail. The module can work off-line, as it does not respond to an immediate change in the data, but <strong>sends information at scheduled intervals</strong>. In addition to tracking the current event, it is also possible to monitor the development of the event over time.</p>
<h2 id="create-and-edit-event-template-card">Create and edit Event Template Card</h2>
<p>To create a new tracked event, you need to create and define it on the <strong>Overview page of Event Templates List</strong>.</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Event Templates</strong> and then choose the related link.</li>
<li>On the <strong>Event Templates List</strong> page, create a new event by choosing the <strong>New</strong> button</li>
<li>A new event tab opens with some generic pre-filled fields.</li>
<li>In the <strong>Table No.</strong> field, select the table above which we want to perform tracking and then select the <strong>field No.</strong> from the table – according to this field, the given stage is evaluated. <strong>Helping Field No.</strong> is used only for a closer resolution of the event.</li>
<li>In the <strong>Attach task to</strong> box, choose whether to open the page or report after the event appears in Event Entries. The object ID field then specifies in more detail which one.</li>
<li>In the Input Table Filter filter field, choose which items from the table to enter or not to enter for further processing.</li>
<li>In the Table Output Filter field, choose to refine the filter.</li>
<li>To close items that pass out of the filter, automatically select the <strong>Close Entries Out of Filter</strong> check box.</li>
<li>Use <strong>Assigned User Name</strong> or <strong>Assigned User Task Group</strong> fields to set who the subsequent task you create will be assigned to.</li>
<li>To start watching the event, uncheck <strong>Disabled</strong> box. This determines whether the field is tracked or not.</li>
</ol>
<div class="NOTE">
<h5>Note</h5>
<p>The <strong>Field No.</strong> functionality also works with calculated fields and is an optional field.</p>
</div>
<p><img src="media/Notifications-event_template_card.png" alt="Event Template"></p>
<h2 id="data-filter-settings">Data filter settings</h2>
<p>In addition to setting filters on the Event Templates page in the <strong>Output and Input Filter fields</strong>, we can also set field filters using the <strong>Date Filters</strong> option. We set it up as follows.</p>
<p><img src="media/Notifications-date_filters.png" alt="Set up Date Filter"></p>
<ol>
<li>On the Event Template page, choose the <strong>Date Filters</strong> action</li>
<li>Set the <strong>Date field number</strong>to which the filter will apply.</li>
<li>Here, in <strong>Start Phase</strong> and <strong>End Phase</strong> boxes, enter a date formula related to the system date (TODAY).</li>
</ol>
<h2 id="set-up-event-phases">Set up Event Phases</h2>
<p>For each <strong>Event Template Card</strong>, you need to set the phases that the event can reach when the conditions are met.</p>
<ol>
<li>On the <strong>Event Template Cards</strong> page, choose the <strong>Phases</strong> action.</li>
<li>Create a new line using the <strong>New</strong> button.</li>
<li>For each line, enter a <strong>Code</strong> that is used to distinguish between the stages of tracking.</li>
<li>Choose <strong>Control Type</strong>.
It takes values <strong>Entry</strong>, <strong>Date Interval</strong> or <strong>Numerical Interval</strong>. When selecting phases, the highest priority is to select Item, then Date Interval, and finally Numerical Interval. This field refers to the Field Number field from the Event Template Card.</li>
</ol>
<div class="NOTE">
<h5>Note</h5>
<p>When selecting the <strong>Entry</strong> control type, the <strong>Period</strong> field is taken. Specifies how long the stage will last from the time the alert item is created. Selecting <strong>Date Interval</strong> works with the <strong>Start Phase</strong> and <strong>End Phase</strong>fields. Therefore, a date formula related to the system date (TODAY) is entered. The Numerical Interval value, in turn, works with the <strong>Start Number</strong> and <strong>End Number</strong> fields.</p>
</div>
<p><img src="media/Notifications-phases.png" alt="Event Phases Setup"></p>
<h2 id="specify-the-addressee-of-e-mails">Specify the addressee of e-mails</h2>
<p>Each event phase can also be assigned an email address specifying to whom the event will be sent. There are three different ways to specify an email recipient that can be combined with each other. The email can then go to all three definitions for one item.</p>
<p><img src="media/Notifications-email.png" alt="Email Setup"></p>
<table>
<thead>
<tr>
<th><strong>Definition Type</strong></th>
<th><strong>Description</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Manually defined email</strong></td>
<td>Use this option if you always want to send notifications to this defined e-mail.</td>
</tr>
<tr>
<td><strong>Dynamic email from a field in a record</strong></td>
<td>Use this option if you want to send email alerts that are directly stored in a record in the source table of the alert template, which is also the source of the alert. (e.g. a notification above an employee's card, which also contains their e-mail).</td>
</tr>
<tr>
<td><strong>Dynamic email from a relational table field</strong></td>
<td>It is used in cases where we want to send an email alert that is stored in a relational table to the source table of the alert template with a link through one field that we set. For example, when notifying you of a sales document, when we want to send an email to the seller of the document. The email is then stored in the E-mail field in the Salesperson/Purchaser table, which is bound from the sales header through one field <strong>Salesperson Code</strong> – Code.</td>
</tr>
</tbody>
</table>
<h2 id="set-up-a-manually-defined-email">Set up a Manually Defined Email</h2>
<ol>
<li>Select the <img src="media/ui-search/search_small.png" alt="Light Bulb icon that opens Tell Me feature." title=" me what you want to do">, enter <strong>Event Templates</strong>, and then select the related link.</li>
<li>On the <strong>Event Template Cards</strong> page, choose the <strong>Phases</strong> action.</li>
<li>Here select <strong>Field Phases</strong> action <strong>E-mails</strong></li>
<li>On the <strong>Event Emails</strong> page, choose ** New** action to fill in the <strong>Email</strong> field as needed.</li>
</ol>
<h2 id="set-up-dynamic-email-from-a-field-in-a-record">Set up Dynamic Email from a field in a record</h2>
<ol>
<li>Select the <img src="media/ui-search/search_small.png" alt="Light Bulb icon that opens Tell Me feature." title=" me what you want to do">, enter <strong>Event Templates</strong>, and then select the related link.</li>
<li>On the <strong>Event Template Cards</strong> page, choose the <strong>Phases</strong> action.</li>
<li>Here select <strong>Field Phases</strong> action <strong>E-mails</strong></li>
<li>On the <strong>Event Emails page,</strong> choose <strong>New</strong> action and fill in the <strong>Email Field No.</strong> field. This is a text box from a table defined by the event template.</li>
</ol>
<h2 id="set-up-a-dynamic-email-from-a-relational-table-fields">Set up a dynamic email from a relational table fields</h2>
<ol>
<li>Select the <img src="media/ui-search/search_small.png" alt="Light Bulb icon that opens Tell Me feature." title=" me what you want to do">, enter <strong>Event Templates</strong>, and then select the related link.</li>
<li>On the <strong>Event Template Cards</strong> page, choose the <strong>Phases</strong> action.</li>
<li>Here select <strong>Field Phases</strong> action <strong>E-mails</strong></li>
<li>Fill in <strong>Relational Table No.</strong> field with the table where the email field is located.</li>
<li>In <strong>E-mail relational field number</strong> box, type the e-mail field in the relational table.</li>
<li>In the <strong>Relation From Field No.</strong> field, enter the <strong>Event Template Table</strong>field that defines the relation to the relational table.</li>
<li>In the <strong>Relation To Field Number</strong> box, type the field from the relational table on which the binding is defined.</li>
</ol>
<h2 id="obsah-e-mailů">Obsah E-mailů</h2>
<p>There are two ways to define the content of an email (subject and body). With a <strong>fixed programmed structure</strong>that we choose ourselves and will be used each time we run it, or with <strong>dynamic content</strong>where the content is defined using fields and email texts.</p>
<h2 id="set-up-an-email-with-a-fixed-structure">Set up an email with a fixed structure</h2>
<p>The subject of this type of email is the <strong>event template code</strong> and the <strong>phase description</strong>. The body of the email, in turn, is the content from the <strong>primary key</strong> field of the event item.</p>
<ol>
<li>Select the <img src="media/ui-search/search_small.png" alt="Light Bulb icon that opens Tell Me feature." title=" me what you want to do">, enter <strong>Event Templates</strong>, and then select the related link.</li>
<li>On the <strong>Event Template Cards</strong> page, choose the <strong>Phases</strong> action.</li>
<li>Here select <strong>Field Phases</strong> action <strong>E-mails</strong></li>
<li>Fill in <strong>Email Type</strong> field as <strong>Standard</strong>.</li>
</ol>
<h2 id="set-up-an-email-with-dynamic-content">Set up an email with dynamic content</h2>
<p>The subject and body of this kind of email are defined in the texts of the email using the email fields. The field itself can be defined from the following tables: Notification Template Source Table, Event Template, Field Phases.</p>
<ol>
<li>Select the <img src="media/ui-search/search_small.png" alt="Light Bulb icon that opens Tell Me feature." title=" me what you want to do">, enter <strong>Event Templates</strong>, and then select the related link.</li>
<li>On the <strong>Event Template Cards</strong> page, choose the <strong>Phases</strong> action.</li>
<li>Here select <strong>Field Phases</strong> action <strong>E-mails</strong></li>
<li>Fill in the <strong>Email Type</strong> field as <strong>Structured</strong>.</li>
</ol>
<p><strong>See also</strong></p>
<p><a href="notifications.html">Notifications</a><br>
<a href="productivity-pack.html">Productivity Pack</a></p>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/ARICOMA-D365BC/AC-IB-dynamics365smb-docs/blob/master/business-central/ProductivityPack/notifications-setup.md/#L1" class="contribution-link">Improve this document</a>
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