<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Transport basic setup | Microsoft Docs </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Transport basic setup | Microsoft Docs ">
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
<h1 id="transport---basic---setup">Transport - Basic - Setup</h1>

<h2 id="transport-setup">Transport Setup</h2>
<p>For basic transport addon settings, do the following:</p>
<ol>
<li><p>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Transport Setup</strong> and then choose the related link.</p>
</li>
<li><p>There are several settings fields on the Traffic Settings page:</p>
<ul>
<li><strong>Vehicle Nos.</strong> – a number series for creating vehicles.</li>
<li><strong>Drivers Nos.</strong> – a number series for creating drivers.</li>
</ul>
</li>
<li><p>In addition, the Transport Settings contains additional options for setting and adding lists in the control panel:</p>
<p><img src="media/transport_setup.png" alt="Transport Setup"></p>
</li>
</ol>
<h3 id="professional-qualifications">Professional Qualifications</h3>
<ul>
<li>Code list representing drivers abilities/skills/authorizations</li>
<li>These authorisations can then be assigned, including time validity, to a specific driver</li>
</ul>
<p><img src="media/transport_codes.png" alt="Professional Qualifications"></p>
<h3 id="fuel-codes">Fuel Codes</h3>
<p>A code list of the types of fuels used in vehicles and linked to the cards invoiced to you by their suppliers (e.g. different types of fuel, fees,...).  This link is then used when creating purchase invoices for purchase statements.
<img src="media/transport_phm.png" alt="Fuel Codes"></p>
<h2 id="vehicle-types">Vehicle Types</h2>
<p>Code list of vehicle types used in your fleet and broken down according to your needs
<img src="media/transport_vehicles.png" alt="Vehicle Types"></p>
<h2 id="vehicle-equipment">Vehicle Equipment</h2>
<p>List of equipment items you want to register for vehicles
<img src="media/transport_vehicles_eq.png" alt="Vehicle Equipment"></p>
<h2 id="maintenance-types">Maintenance Types</h2>
<p>To break down vehicle maintenance according to your needs
<img src="media/transport_main.png" alt="Maintenance Types"></p>
<h2 id="operation-types">Operation Types</h2>
<p>The list can be used to determine different costs and standardised vehicle consumption depending on the vehicle type.</p>
<p><img src="media/transport_types.png" alt="Operation Types"></p>
<h2 id="drive-journal-templates">Drive Journal Templates</h2>
<ul>
<li>Templates allow you to define a Drive Journal for a specific entry - for example, a driver or a vehicle.</li>
<li>Drive Journal Template contains one line for each template, field:
<ul>
<li><strong>Force Counter Continuity</strong> – lines must be entered in the order in which the rides were made.</li>
<li><strong>Drive Time Mandatory</strong> – user must enter the duration of the journey.</li>
</ul>
</li>
</ul>
<p><img src="media/transport_templatekh.png" alt="Drive Journal Templates"></p>
<h2 id="refuelling-statement-template">Refuelling Statement Template</h2>
<ul>
<li><p>Refuelling Statement Template are used to create and track individual statement templates. You must fill in the following fields in the template:</p>
<ul>
<li><strong>Name</strong> and <strong>Description</strong>.</li>
<li><strong>Statement Nos.</strong> – number series for Refuelling Statement.</li>
<li><strong>Issued Statement Nos.</strong> – number series for issued Refuelling Statement</li>
<li>parameters for electronic processing of <strong>Import path</strong>, <strong>Import File Type</strong>, <strong>Import Object Type</strong>, <strong>Import object ID</strong>, <strong>Import object ID Name</strong>.</li>
<li><strong>Vendor No.</strong> – Must be filled in if purchase invoices will be generated from statements.</li>
<li><strong>Fuel Vendor No.</strong> – non-editable, it is copied from the same field on the supplier's card (this is the fuel supplier number that he states in the electronic statements and which is checked during their import).</li>
<li><strong>Fuel Journal Template</strong> – must be filled in if fuel journals will be generated from the statements.</li>
<li><strong>Fuel Journal Batch</strong> – it is necessary to fill in if fuel journals will be generated from the statements.</li>
</ul>
</li>
</ul>
<p><img src="media/transport_css.png" alt="Refuelling Statement Template - CSS"></p>
<h2 id="vendors">Vendors</h2>
<p>In the event that fuel Driver journal are used, it is necessary to set the following data on the supplier:</p>
<ul>
<li>Fuel Vendor No. – this is the field that is checked during the entry of the fuel drawdown statement or its import</li>
<li>Fuel Item Vend. Catalog – to mark the items in the vendor's statement and pair them to the item cards in the system.</li>
</ul>
<p><strong>See also</strong></p>
<p><a href="transport-basic.html">Transport - Basic</a><br>
<a href="productivity-pack.html">Productivity Pack</a></p>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/ARICOMA-D365BC/AC-IB-dynamics365smb-docs/blob/master/business-central/Solutions/transport-basic-setup.md/#L1" class="contribution-link">Improve this document</a>
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