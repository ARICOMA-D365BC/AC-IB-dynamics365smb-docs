<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Centr&#225;ln&#237; datab&#225;ze | Microsoft Docs </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Centr&#225;ln&#237; datab&#225;ze | Microsoft Docs ">
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
<h1 id="settings---central-database">Settings - Central Database</h1>

<h2 id="central-database-settings">Central Database Settings</h2>
<p>For basic setup of the central database, proceed as follows:</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Central Database Tabble Setup</strong> and then choose the related link.</li>
<li>The <strong>Central Database Setup</strong> page opens, where you set the following fields:
<ul>
<li><strong>System ID</strong> – used to identify the system - the name of the company as it will be used in the field of communications (it is important to set this name correctly in other cooperating companies).</li>
<li><strong>Central Database System ID</strong> – the name of the company that serves as the controller for the communication-synchronization process. This company sets settings for &quot;subordinate&quot; companies. One company can receive settings from the central database and at the same time be the central database for other companies = there can be multiple central databases in the system.</li>
<li><strong>Central Database</strong> – an internally used field that determines whether the company is itself a central databas The setting is crucial for decisions about sending synchronized data and about checks.</li>
<li><strong>Process type</strong> set up the code that corresponds to the code specified in the spooler task settings in the Process Type field (<em>see Spooler Setup</em>). This code is part of the XML document and is used to determine whether the document can wait for processing.</li>
<li><strong>Process Type</strong> - setting of the code that corresponds to the code specified in the spooler task settings in the Process Type field (<em>see Spooler settings</em>). This code is part of the XML document and uses it to identify whether the document must be processed immediately and a response sent.</li>
</ul>
</li>
<li>After you fill in the fields, close the page.</li>
</ol>
<h2 id="set-up-destination-systems">Set up Destination Systems</h2>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Destination Systems</strong> and then choose the related link.</li>
<li>The <strong>Destination Systems</strong> page opens, where you fill in the following fields:
<ul>
<li><strong>ID</strong> – company code for communication (must be identical in the whole communication chain)</li>
<li><strong>Description</strong> – an indicative description of the company</li>
<li><strong>Database name</strong> – the name of the database in which the company is located</li>
<li><strong>Company name</strong> – the correct company name listed as the company name in its database (may be different from the codename)</li>
</ul>
</li>
<li>After you fill in the fields, close the page.</li>
</ol>
<h2 id="central-database-table-setup">Central Database Table Setup</h2>
<p>The application allows you to synchronize individual tables and their selected fields, you can also synchronize only the data falling into a particular filter. Synchronization can be independent and different for several companies.</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Central Database Table Setup</strong> and then choose the related link.</li>
<li>The <strong>Central Database Table Setup</strong> page opens, where you fill in the following fields:
<ul>
<li><strong>Disabled</strong> – his field allows you to temporarily turn off sync while leaving the settings. It is mainly used for collision resolution or mass processing of centralized data (imports, renaming, etc.).</li>
<li><strong>Priority</strong> – you can set the order for sending to sync.</li>
<li><strong>Central DB ID</strong> – The ID of the system that controls the synchronization of the table. If this ID does not equal the system ID of the company in which we are located, the record cannot be changed.</li>
<li><strong>Table No.</strong> – The number of the data table object in the system. The table can be selected from the code list of all tables. Synchronizing some tables is meaningless from the point of view of the system or may cause a collision.</li>
<li><strong>Table Caption</strong> – is field is filled in automatically according to the table number field setting.</li>
<li><strong>ID</strong> – independent code that is part of the primary key and allows you to set different synchronizations for one table (eg if I want to have a difference in the settings for 2 companies, where I want to allow some data to change and the other not). This code has no other link in the system and the user can set it as he wants (company name, group of companies, type of synchronization, etc.).</li>
<li><strong>Synchronization type</strong> – this option takes two values – Push and Pull. The importance of this option is when creating new data into the system (changing data and deleting data are always sent automatically).</li>
<li><strong>Push</strong> – option means that in the event of a change in the data, this data is immediately sent to the subordinate systems and updated there (the data is &quot;pushed&quot;).</li>
<li><strong>Pull</strong> – this option means that the newly created data is not sent immediately to subordinate systems, but the user can &quot;reach&quot; into the central database and choose which data from the headquarters he wants in his system (the data is &quot;pulled&quot;).</li>
<li><strong>Fields</strong> – this option determines whether some or all fields are synchronized (this field is related to the functionality of setting synchronized fields, see below).</li>
<li><strong>Allow Modify</strong> – The field determines whether the user in the child database can change the value of the fields in the given record (checking on synchronized fields).</li>
<li><strong>Allow Insert</strong> – the field determines whether the user in the child database can create a new record in the synchronized table.</li>
<li><strong>Synchronize By</strong> – the field is used to optimize data transfer and system load; can be selected from the Limited number of records and All records values.</li>
<li><strong>Records limit</strong> – the field is used to optimize data transfer and system load.</li>
<li><strong>Max Query Answer Records</strong> – the field is used to optimize data transfer and system load; the system limits the number of records sent in response from the central database when querying synchronized data.</li>
</ul>
</li>
<li>After you fill in the fields, close the page.</li>
</ol>
<h2 id="other-settings">Other settings</h2>
<p>After the basic setting of the Central Database addon, it is necessary to set up additional areas. These are specific field settings for the central database tables.</p>
<h3 id="set-up-central-database-fields">Set up Central Database Fields</h3>
<p>The settings are used to define which specific fields of a given table and how we want to synchronize.</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Central Database Table Setup</strong> and then choose the related link.</li>
<li>The <strong>Central Database Table Setup</strong> page opens, where you select the row with the corresponding table.</li>
<li>Select <strong>Related</strong>, then <strong>Setup</strong> and select <strong>Fields</strong>, feature to fill in the following fields as needed:
<ul>
<li><strong>Field No.</strong> – the number is selected from the object of the given table and is a unique identification of the field throughout the system (together with the table number). When changing in the system, the field numbers do not change.</li>
<li><strong>Field Caption</strong> – This field is filled in automatically according to the field number field setting.</li>
<li><strong>Allow Modify</strong> – The field determines whether a user in a child business can change the value of this particular field.</li>
<li><strong>Primary Key Field</strong> – the field is used internally, the system sets the value itself. A field with this designation is always required to be synchronized</li>
<li><strong>Do Not Validate</strong> – field determines whether the so-called validation process (execution of functions related to changing the value of the field) occurs after the synchronization of this field. This field must be set by a very experienced user of the system, the wrong setting will cause collision situations.</li>
</ul>
</li>
<li>After the fields are filled out, close the page.</li>
</ol>
<h3 id="set-up-central-database-receivers">Set up central database Receivers</h3>
<p>The settings are used in defining communication for a specific record from the table synchronization settings (as described above, one table can be synchronized for different companies in different ways).</p>
<ol>
<li><p>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Central Database Table Setup</strong> and then choose the related link.</p>
</li>
<li><p>The <strong>Central Database Table Setup</strong> page opens, where you select the row with the corresponding table.</p>
</li>
<li><p>Select <strong>Related</strong>, then <strong>Setup</strong> and select <strong>Receivers</strong>, feature to fill in the following fields as needed:</p>
<ul>
<li><strong>Disabled</strong> – his field allows you to temporarily turn off sync while leaving the settings. It is mainly used for collision resolution or mass processing of centralized data (imports, renaming, etc.).</li>
<li><strong>Destination System ID</strong> – binding to the settings of the target systems. The code determines which company will be the recipient of the synchronized data at the event.</li>
<li><strong>Table Synchronization Filter</strong> – in the field (and auxiliary child form) you can set a general filter that determines which data will be synchronized (only data belonging to the filter).</li>
<li><strong>Table Permissions Filter</strong> – In the field (and the auxiliary child form), you can set a generic filter that determines which data the user in the child company will be able to modify or create.</li>
</ul>
</li>
<li><p>After the fields are filled out, close the page.</p>
</li>
</ol>
<h3 id="relations-settings">Relations settings</h3>
<p>Use the settings to specify relational bindings that ensure that related records (e.g., goods + item unit of measure) are synchronized when records from a particular table are synchronized.</p>
<ol>
<li><p>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Central Database Table Setup</strong> and then choose the related link.</p>
</li>
<li><p>The <strong>Central Database Table Setup</strong> page opens, where you select the row with the corresponding table.</p>
</li>
<li><p>Select <strong>Related</strong>, then <strong>Setup</strong> and select <strong>Relations</strong>, feature to fill in the following fields as needed:</p>
<ul>
<li><strong>Disabled</strong> – his field allows you to temporarily turn off sync while leaving the settings. It is mainly used for collision resolution or mass processing of centralized data (imports, renaming, etc.)</li>
<li><strong>Related Table No.</strong> – The number of the data table object in the system. The table can be selected from the dial list of already synchronized tables. This table is relationally or logically subordinate and its data is bound to the parent table</li>
<li><strong>Table Relations name</strong> – this field is filled in automatically according to the setting of the Session table number field</li>
<li><strong>Table Filter</strong> – A generic filter can be set in a field (and an auxiliary child form) to determine which data is synchronized as part of a relational synchronization</li>
<li><strong>Relation Exist</strong> – a field that determines whether a relational binding is already defined</li>
<li><strong>Relation</strong> – only the displayed form field, in the child form of which a relational binding can be defined</li>
</ul>
</li>
</ol>
<h2 id="see-also">See also</h2>
<p><a href="centraldatabase.html">Central Database</a>`<br>
<a href="productivity-pack.html">Productivity Pack</a><br>
<a href="../index.html">ARICOMA Solutions</a></p>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/ARICOMA-D365BC/AC-IB-dynamics365smb-docs/blob/master/business-central/ProductivityPack/centraldatabase-setup.md/#L1" class="contribution-link">Improve this document</a>
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