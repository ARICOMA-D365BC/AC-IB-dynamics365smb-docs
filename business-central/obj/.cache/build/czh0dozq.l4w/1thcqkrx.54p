<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>ARICOMA SOLUTIONS - Parcels - Balikobot integration - setup | Microsoft Docs </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="ARICOMA SOLUTIONS - Parcels - Balikobot integration - setup | Microsoft Docs ">
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
<h1 id="setup---parcels---balíkobot-integration">Setup - Parcels - Balíkobot Integration</h1>

<blockquote>
<p>Update: 08.04.2022</p>
</blockquote>
<p>There are several areas that need to be set up for the AC Parcel addon to work properly. The addon is initially set up using the wizard and then the settings can be changed manually.</p>
<h2 id="addon-settings-areas">Addon settings areas:</h2>
<ul>
<li>Numbered series</li>
<li>Expedition places</li>
<li>Parcels settings</li>
<li>Shipping agents</li>
<li>Location Settings</li>
<li>Shipment parameters</li>
<li>Print Settings</li>
<li>Payment settings (COD)</li>
<li>Automatic updates</li>
<li>Settings in the Sandbox environment</li>
</ul>
<p>Other code lists (Carrier Services, Handling Units and Carrier Branches) are downloaded from the Balíkobot API.</p>
<h2 id="setting-up-parcels-using-the-wizard">Setting up Parcels using the wizard</h2>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Assisted Setup</strong> and then choose the related link.</li>
<li>Select Shipment Settings</li>
<li>After reading the instructions, click <strong>Next</strong>.</li>
<li>If you want you can import the RapidStart package manually, or you can click <strong>Next and the package will download and import itself</strong>.</li>
<li>Next, create a new shipping location using the <strong>New</strong> button and fill in the fields:
<ul>
<li>Code</li>
<li>Username</li>
<li>Password</li>
</ul>
</li>
<li>You can also fill in additional information:
<ul>
<li>Description</li>
<li>Name</li>
<li>Address</li>
<li>City</li>
<li>Postcode</li>
</ul>
</li>
<li>In the <strong>Expedition Places</strong>, select the newly created record.</li>
<li>In the next step, select the location created by the shipping location and click Next.</li>
<li>Create a new Shipping Agent using the fields:
<ul>
<li>Code</li>
<li>Name</li>
<li>Integration services: Balíkobot.cz</li>
<li>Balíkobot code</li>
<li>Allow multiple packages - YES</li>
<li>Master data synchronization - YES</li>
</ul>
</li>
<li>Select the <strong>Synchronize master data</strong>function.</li>
<li>In the Number Series field, select the appropriate number series for shipments.</li>
<li>Once you have filled in everything and clicked <strong>Finish</strong>, the assisted guide will close and the master data will begin to synchronize.</li>
</ol>
<h2 id="manual-adjustment-of-settings">Manual adjustment of settings</h2>
<h3 id="expedition-places">Expedition places</h3>
<p>The Expedition Places are locations of your warehouses from where shipments are dispatched. A user can have several expedition places. A different API is required for each expedition place, and the expedition place is associated with one location of your company.</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Expedition Places</strong> and then choose the related link.</li>
<li>Choose the function <strong>New</strong>.</li>
<li>Insert <strong>Code</strong> for expedition place, description, address and <strong>User Name and password</strong> to yours API.</li>
<li>Close the list of Expedition places.</li>
</ol>
<p><img src="media/BB_exp_pl.png" alt="Parcels settings"></p>
<h3 id="location-settings">Location Settings</h3>
<p>On the tab of the given location it is necessary to select the dispatch place that is connected with the given API. If there are more locations, it is necessary to set the appropriate dispatch point for each. This serves to reduce the error rate of users so that they cannot combine documents with different shipping points into the shipment.</p>
<p>To assign a shipping location to a location, you need to set the <strong>Expedition Places Code</strong>.</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Locations</strong> and then choose the related link.</li>
<li>Open the desired location tab</li>
<li>Fill in <strong>Expedition Places Code</strong> field on the General tab</li>
</ol>
<p><img src="media/BB_lokace.png" alt="Parcels settings"></p>
<h3 id="parcels-settings">Parcels settings</h3>
<p>Basic Package Setup must be made on the <strong>Parcels Settings</strong>page.
<img src="media/BB_setup.png" alt="Parcels settings"></p>
<p>Parcels Management Setup page contain:</p>
<ul>
<li><strong>Parcels No.</strong> - Specifies the No. Series for parcels.</li>
<li><strong>Default Expediton Place Code</strong> - Specifies the API credentials and shipment location from where the parcel will be shipped.</li>
<li><strong>Print Handover After Order</strong> – Automatic print of Handover protocols after collection order.</li>
<li><strong>Default Printer Name</strong> – Specifies the printer for printing labels</li>
<li><strong>Limit Response Time</strong> – Specifies the timeout of communication.</li>
<li><strong>Activity Log Enabled</strong> - Starts activity log tracking.</li>
<li><strong>Debug Mode</strong> – Allows you to intercept messages in communication with the service</li>
<li><strong>Automatic master data synchronization</strong> - Runs a procedure on the job queue that updates all data from the Package in a certain time period.</li>
<li><strong>Automatic Transportation Status Update</strong> - Runs a procedure on the job queue that updates the shipment transfer status for the last month in a specific time period.</li>
</ul>
<p>Basic settings are made using the application setup wizard.
The other tables are downloaded and filled after master data synchronization is enabled.
These data are updated manually using the &quot;Resynchronize master data&quot; function.</p>
<h4 id="basic-settings-of-parcels---balíkobot-integration">Basic settings of Parcels - Balíkobot integration</h4>
<p>To start the balíkobot functions, you need to make the following settings:</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Parcels setup</strong> and then choose the related link.</li>
<li>Select a number series for shipments</li>
<li>Select default Expedition Places</li>
<li>Enable or disable automatic printing of collection reports</li>
<li>Enable or disable Activity Log</li>
</ol>
<h3 id="shipping-agents-setup">Shipping Agents setup</h3>
<p>The basic codebook is loaded using the RapidStart package for Business Central. This package contains data that is not downloaded from the Balíkobot API:</p>
<h4 id="table-of-shipping-agents">Table of Shipping Agents</h4>
<p>Other tables are downloaded and filled after synchronization of master data and in the Shipping Agent table.
The update of this data is done manually using the &quot;Resynchronization of master data&quot; function.
<img src="media/BB_shipping-agents.png" alt="Balíkobot setup"></p>
<p>The overview also includes carriers that you do not have configured with Balíkobot. Additional data is not imported for such data (see below).</p>
<h3 id="on-the-carrier-overview-there-are-several-fields-to-set-up">On the carrier overview, there are several fields to set up:</h3>
<ul>
<li>Integration Service<strong>Integrační služba</strong> – Determines through which integration service the shipping agent is used (in this case Balikobot.cz)</li>
<li><strong>Enable master data synchronization</strong> – Master data may become available after switching on</li>
<li><strong>Last master data synchronization</strong> – Date of last master data synchronization</li>
<li><strong>Enabled for Balíkobot</strong> - Carrier is enabled and can be used</li>
<li><strong>Allow multiple packages</strong> - When creating a shipment, the feature allows you to create multiple packages within one shipment.</li>
<li><strong>Pallet transport</strong></li>
<li><strong>Number of handling units</strong> - For pallet transport it is possible to set more handling units.</li>
<li><strong>Branch only</strong> – Specifies that the carrier serves only as a pickup point.</li>
<li><strong>Maximum address length</strong> – set the address length for the selected carrier.</li>
</ul>
<h3 id="functions-over-shipping-agents">Functions over shipping agents</h3>
<ul>
<li><strong>Connection Test</strong> – Test communication between the integration service and Business Central</li>
<li><strong>Master data synchronization</strong> – Starts master data synchronization</li>
<li><strong>Shipping Agent Services</strong> - Table of services of individual shipping agent</li>
<li><strong>Shipping Agent Branches</strong> - Table of locations, where customers can take goods from the carrier</li>
<li><strong>Handling units</strong> - Table of pallet handling units</li>
<li><strong>ADR units of the carrier</strong> – Table of ADR units of the carrier</li>
</ul>
<p>If you add a carrier after the first setup has been made using assisted setup, you must fill in the fields correctly:</p>
<ul>
<li>Code</li>
<li>Package Tracking URL</li>
<li>Integration service</li>
<li>Balíkobot code</li>
</ul>
<p>Then you need to use <strong>the Synronization function of master data</strong>!</p>
<h3 id="set-up-shipping-agent-services">Set up Shipping Agent Services</h3>
<p>Shipping Agent Services are downloaded automatically using the Balikobot API. It is possible to force certain settings for individual Shipping Agents services. To set it up, you must:</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Shipping Agents</strong> and then choose the related link.</li>
<li>Select the desired carrier from the list and select <strong>Shipping Agent Services</strong> feature</li>
<li>Fill in the fields on the following page as needed:
<ul>
<li><strong>Enabled for Balikobot</strong> - The service can be used (enabled by default)</li>
<li><strong>Enforce Shipment Weight</strong></li>
<li><strong>Force shipment volume</strong></li>
<li><strong>Enforce Shipment Price</strong></li>
<li><strong>Force cash on delivery</strong></li>
<li><strong>Enforce shipment variable symbol</strong></li>
<li><strong>Weight on line</strong> - Weight must be filled in the shipment line</li>
<li><strong>Services of ČP</strong> – Only for Czech Post service - a long text string of postal services above the parcel
o	<a href="https://www.balikobot.cz/dokumentace/cp_ciselnik_sluzeb.pdf">https://www.balikobot.cz/dokumentace/cp_ciselnik_sluzeb.pdf</a></li>
</ul>
</li>
</ol>
<h3 id="balikobot-api-settings">Balikobot API settings</h3>
<p>This system table allows you to configure extended carrier settings. These are settings for API communication, where you can select communication versions and more for selected carriers.</p>
<p>From an admin point of view, there is an option to set the shipping agent code for communication in case of changes from Balíkobot (Shipping Agent API Code) when the API shipper name is longer than 10 characters (for example DHL Freight EuroConnect, which had the API name &quot;dhlfreight&quot; and now uses &quot;dhlfreightec&quot;).</p>
<h2 id="shipment-parameters">Shipment parameters</h2>
<p>Parameters for individual shipping agents are downloaded from the package package API</p>
<h3 id="payment-method-settings---cash-on-delivery">Payment method settings - Cash on delivery</h3>
<p>To set up and use the cash on delivery function, it is necessary to set up booeal <strong>Cash on delivery</strong> on the payment method.</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Payment Method</strong> and then choose the related link.</li>
<li>In the overview, check the <strong>Cash on delivery</strong> option.</li>
<li>Close the payment method overview.</li>
</ol>
<h2 id="print-settings">Print Settings</h2>
<h3 id="pdf-reader">PDF reader</h3>
<p>You need to have a PDF reader installed to print labels. To work with labels, we recommend Foxit pdf and also have it set as the default program for PDF files.</p>
<h3 id="print-format-selection---client-zone">Print Format Selection - Client Zone</h3>
<p>The basic step in setting up label printing is to define how the PDF with labels will be generated by Package. In the client zone (<a href="https://client.balikobot.cz/">https://client.balikobot.cz/</a>), the user must set whether to print in full page format or according to positions on A4 size paper. It all depends on what printer it will be printed on. The label printing position does not need to be selected for printing to the label printer.</p>
<h3 id="printer-selection">Printer selection</h3>
<p>To set up label printing, you need to set the report ID and assign a printer to the user. The Print Labels feature is set to print to a defined printer.</p>
<p>To define a printer, it is necessary:</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Printer Selections</strong> and then choose the related link.</li>
<li>Choose <strong>New</strong>.</li>
<li>Select User ID, Report ID 52068430, and Printer Name</li>
</ol>
<p>Printing of the handover protocol is printed automatically after ordering the collection. If the user does not want automatic printing, just turn off Boolean - Printing handover protocols in the Balíkobot Settings. Printing is done from the Default Printer according to your device. Alternatively, if you have the default printer set in <strong>Printer Selections</strong> as the rest of your print reports.</p>
<h2 id="automatic-updates">Automatic updates</h2>
<h3 id="automatic-master-data-update">Automatic master data update</h3>
<p>The automatic update of the master data starts a procedure on the job queue, which updates all data from Balikobot in a certain period of time (By default on Sunday at 14:00).</p>
<p>To turn on this feature, follow these steps:</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Parcels setup</strong> and then choose the related link.</li>
<li>In Parcels Management Setup, turn on &quot;Run Master Data Sync. Task&quot;.</li>
<li>The user will be prompted to create and open a new job queue item that will be in the &quot;Ready&quot; state.</li>
<li>After that, you can close the settings.</li>
</ol>
<h3 id="automatic-update-of-the-transport-status">Automatic update of the transport status</h3>
<p>Automatic shipment status update triggers a procedure on the job queue that updates the shipment shipment status for the last month over a period of time.</p>
<p>To turn on this feature, follow these steps:</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Parcels setup</strong> and then choose the related link.</li>
<li>In Parcels Management Setup, turn on &quot;Run Track Status Update Task&quot;.</li>
<li>The user will be prompted to create and open a new job queue item that will be in the &quot;Ready&quot; state.</li>
<li>After that, you can close the settings.</li>
</ol>
<h2 id="settings-in-the-sandbox-environment">Settings in the Sandbox environment</h2>
<h3 id="runtime-deadlock">Runtime deadlock</h3>
<p>When setting up the add-on with assistance, the message &quot;<em>The request was blocked by the runtime</em>&quot; may be displayed.</p>
<p>To resolve this issue, follow these steps:</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Extension Management</strong> and then choose the related link.</li>
<li><strong>The Installed Extensions</strong> page opens.</li>
<li>Select the line extension <strong>Parcels</strong> and then use the action <strong>Configuration</strong>.</li>
<li>On the <strong>Extension Configuration</strong> page, enable the <strong>Enable HttpClient requests</strong> switch.</li>
<li>You can then close the page and run the Guided Wizard again.</li>
</ol>
<h2 id="paperless-trade-settings">PaperLess Trade settings</h2>
<h3 id="turn-on-paperless-trade-at-the-carrier">Turn on Paperless Trade at the carrier</h3>
<p>Paperless Trade is used to send an electronic invoice (in the case of a pro-forma invoice) for customs clearance.</p>
<p>To set it up correctly, follow these steps:</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Shipping Agents</strong> and then choose the related link.</li>
<li>On the carriers overview, select the carrier for which you want to turn on the service.</li>
<li>To turn on the service, select the <strong>Paperless Trade</strong> field.</li>
<li>After setup, you can close the page</li>
</ol>
<h3 id="automatically-attach-an-invoice-to-a-shipment">Automatically attach an invoice to a shipment</h3>
<p>For Paperless Trade to work properly, you must attach a PDF file of the invoice (pro-forma invoice) to the shipment.</p>
<p>In the case of creating a shipment from a billed sales invoice, it is possible to generate a document and attach it automatically when creating the shipment. To make the correct settings, proceed as follows:</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Shipping Agents</strong> and then choose the related link.</li>
<li>In the carriers overview, select the carrier for which you want to turn on automatic document creation.</li>
<li>To turn on automatic PLT document creation, select the <strong>Create PLT Document</strong>field.</li>
<li>Once set up, you can close the page.</li>
</ol>
<h2 id="see-also">See also</h2>
<p><a href="parcels.html">Parcels</a><br>
<a href="productivity-pack.html">Productivity Pack</a><br>
<a href="../index.html">ARICOMA Solutions</a></p>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/ARICOMA-D365BC/AC-IB-dynamics365smb-docs/blob/master/business-central/ProductivityPack/parcels-setup.md/#L1" class="contribution-link">Improve this document</a>
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