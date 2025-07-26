<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>ARICOMA SOLUTIONS - Parcels | Microsoft Docs </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="ARICOMA SOLUTIONS - Parcels | Microsoft Docs ">
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
<h1 id="parcels---balikobot-integration">Parcels - Balikobot Integration</h1>

<blockquote>
<p>Update: 08.04.2022</p>
</blockquote>
<p>The Parcels addon is used to create shipments and directly print labels of selected shipping angent, send shipment data to the shipping angent and order the actual parcel collection. With this extension, the process of processing and creating shipments sent to customers is accelerated. This addon uses the API of the Balikobot service.</p>
<p>This addon is built on the basis of reading barcode (numbers) of charged documents. Shipments can be created from posted sales shipments and invoices. If the user will create a shipment from an invoiced sales delivery, the shipment will be created without COD and from invoices with COD.</p>
<p>List of shipping angents:</p>
<ul>
<li>Airway</li>
<li>Česká pošta</li>
<li>Dachser</li>
<li>DB Schenker</li>
<li>DHL</li>
<li>DHL DE</li>
<li>DHL Freight</li>
<li>DHL Freight Euroconnect</li>
<li>DHL Parcel Europe</li>
<li>DPD</li>
<li>DSV</li>
<li>Fedex</li>
<li>Fofr</li>
<li>Gebrüder Weiss CZ</li>
<li>Gebrüder Weiss SK</li>
<li>Geis</li>
<li>GLS</li>
<li>JAPO Transport</li>
<li>Liftago</li>
<li>Lockers.ai</li>
<li>Magyar Posta</li>
<li>Messenger</li>
<li>Pošta Bez Hranic</li>
<li>PPL</li>
<li>Raben</li>
<li>SK Parcel Service</li>
<li>Slovenská pošta</li>
<li>Spring</li>
<li>TNT</li>
<li>Top Trans</li>
<li>UPS</li>
<li>We Do</li>
<li>We Do Uloženka</li>
<li>Zásilkovna</li>
</ul>
<h2 id="creating-a-sales-order">Creating a sales order</h2>
<p>The basic step of the shipment creation process is the sales order. he data from the sales order is transferred to the other documents from which the shipments are created, so it is essential to enter the data correctly at the beginning of the process. (Similarly, shipments can be created from sales invoices.)</p>
<p><img src="media/BB_order.png" alt="Creating a order"></p>
<h3 id="required-fields-to-be-entered-before-issuing-a-document">Required fields to be entered before issuing a document</h3>
<ul>
<li>Customer address</li>
<li>Shipping Agent Code, Shipping Angent Service Code or Shipping Angent Branch Code.</li>
<li>Customer's phone number, email or one of the following.</li>
<li>Payment method code (if COD), variable symbol.</li>
<li>Your references (if your customer requires a label, e.g.: your order number).</li>
</ul>
<p>Business Central will not release a receipt if the phone number and/or email is not filled in! (See check settings).
If no shipping angent is selected on the order, the check to release the document (phone number and email is disabled).</p>
<h3 id="optional-field-to-be-entered-before-the-document-is-released">Optional field to be entered before the document is released</h3>
<p>The user can already enter optional shipment parameters in the sales order. The <strong>Shipment Parameters</strong> infomation panel on the sales order tab is used to enter them. The insert button opens a window with parameters from the settings, which can be added as required. These can be for example:</p>
<ul>
<li>Checking the age of the addressee</li>
<li>Driver contact</li>
<li>Delivery to the floor.</li>
<li>Morning delivery.</li>
<li>Checking the age of the addressee</li>
<li>Driver contact</li>
<li>Delivery to the floor.</li>
<li>Morning delivery.</li>
<li>And many more.</li>
</ul>
<h2 id="create-parcel-card">Create Parcel Card</h2>
<p>The consignment card consists of a total of five parts.</p>
<p><img src="media/BB_parcel_header.png" alt="Creating a order">
<img src="media/bb_parcel_body.png" alt="Creating a order"></p>
<h3 id="parcel-header">Parcel header</h3>
<p>The document header contains only the mandatory data needed to create a shipment, to enter other data such as dimensions or a message to the driver, you must use the Shipment Parameters pane. Each shipping angent and shipping angent service has its own specific parameters that will report a message if the data is incomplete, indicating what data is missing from the shipment.</p>
<h3 id="parcel-lines">Parcel lines</h3>
<p>The &quot;Number of Packages&quot; field exists to define the number of packages within a shipment. If the shipment is a parcel shipment (NOT a PALETTE shipment), once the number of parcels is entered, shipment lines will be created with individual shipping angent labels assigned. In the case of a pallet shipment, this field will specify the quantity of one handling unit (multiple lines will not be created, but one line will be created and the quantity will be filled in; e.g.: 3 pallets).</p>
<h3 id="other-parts">Other parts</h3>
<table>
<thead>
<tr>
<th>Part</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Shipment Parameters</strong></td>
<td>Shipment Parameters Selectable.</td>
</tr>
<tr>
<td><strong>Attached documents</strong></td>
<td>In the Attached documents subpage it is possible to see all delivery notes or invoices that have been inserted in one shipment (only functional when the shipment is sent to one address).</td>
</tr>
<tr>
<td><strong>Contents of shipment</strong></td>
<td>The contents of a shipment are mainly for shipments outside the EU, where it is necessary to give information about what is in the shipment.</td>
</tr>
<tr>
<td><strong>Parcel Attachments</strong></td>
<td>Used to attach pdf documents to a shipment.</td>
</tr>
</tbody>
</table>
<h2 id="creating-a-new-shipment-from-a-posted-document">Creating a new shipment from a posted document</h2>
<p>After posting the shipment, the process of creating a shipment for the customer begins. One way is to create a shipment from a delivery note or a charged invoice. By retrieving the invoice number, the <strong>Create Parcel</strong> form is automatically pre-populated. This step eliminates the need for the user to manually fill out the shipment information.</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Create Parcel</strong> and then choose the related link.</li>
<li>Enter the number of the document being charged (posted sales shipment, posted sales invoice) in the <strong>Document Number</strong> field. Or use the Scan Codes function (in case you have a barcode with a receipt number).</li>
<li>The user has the option to enter the number of packages within a shipment.</li>
<li>Select the <strong>Create Shipment and Print Label</strong> function.</li>
<li>The shipment is now created and is also in the <strong>For collection</strong> status, i.e. it has already been assigned a number by the shipping agent. The label and data are on the Balikobot side).</li>
</ol>
<h2 id="manual-parcel-creation">Manual Parcel creation</h2>
<p>You can also create shipments manually without accounting documents, e.g.: for sending letters or an additional package. On the shipment overview there is a &quot;New&quot; function which opens a blank shipment card. The Shipments tab and the Create Shipment tab are almost identical. When you manually create a shipment, you cannot scan the number of the billed document and the data must be filled in manually. In this creation, you must enter Status on &quot;New&quot; and add one line. Once the data for the shipment is set up, the &quot;Add to Shipment&quot; function will register the shipment in the Balikobot system. Then you must manually print the label.</p>
<p>To create a shipment manually, the steps are as follows:</p>
<ol>
<li>Select the <strong>New</strong> function on the shipment overview.</li>
<li>Fill in the necessary fields for the shipper and its service.</li>
<li>The <strong>Add</strong> to collection function (the shipment is in the <strong>For collection</strong> status and the label can be printed).</li>
<li>Use the <strong>Print label</strong> function.</li>
<li>The shipment is ready to be ordered for collection.</li>
</ol>
<h2 id="shipment-modification">Shipment modification</h2>
<p>You can edit shipments only if they are in the <strong>New</strong> status. If a shipment is in the <strong>Collected</strong> state, it can no longer be edited. In order to edit/delete shipment information, the shipment must be in the <strong>For Collection</strong> status. Use the Remove From Shipment function to change the status from For <strong>Collection</strong> to <strong>New</strong>.</p>
<p>After this step, you must notify the shipper that you are deleting or editing the shipment. At this point, the shipment number is removed from the carrier and the label is deleted. Once the data has been edited, the user will use the <strong>For Collection</strong> function and use the <strong>Print Labels</strong> function to print the new label.</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Parcels</strong> and then choose the related link.</li>
<li>Choose on the consignment line and use the <strong>Remove from collection</strong> function.</li>
<li>Open the Parcel (it now has a status of <strong>New</strong>).</li>
<li>Add data/values about the shipment (change of carrier, number of packages, weight, dimensions...).</li>
<li>Use the <strong>Add to collection</strong> function (the shipment is in the <strong>For collection</strong> status and the label can be printed).</li>
<li>Next, use the <strong>Print Label</strong>.</li>
<li>The shipment is ready for <strong>Order Collection</strong>.</li>
</ol>
<h2 id="ordering-collection">Ordering Collection</h2>
<p>Order collection is used to pass information about your shipments to the carrier. The process of ordering a collection is simple, it is done using the &quot;Order collection&quot; function on the shipment overview.</p>
<p>The function will display a list of carriers with the number of shipments that have not yet been ordered for collection. The user can order a collection only for the selected shipper or for all of them at once.</p>
<p><img src="media/BB_collect.png" alt="Creating a order"></p>
<p>In order to order a collection, the following steps are required:</p>
<ol>
<li>In the shipment overview, select the <strong>Order Collection</strong> function.</li>
<li>On the Order Pickup tab, select whether to order a pickup from one carrier (<strong>Order Collection</strong>) or all carriers (<strong>Order All Collections</strong>).</li>
<li>When the function is initiated, the <strong>Handover report</strong> will print.</li>
</ol>
<h2 id="printing-the-collection-report">Printing the collection report</h2>
<p>The handover report is generated by the haulers.
This report can be set to print automatically when a collection is ordered. The automatic printing settings are in the <strong>Shipment Settings</strong> window. For additional printing of the handover report of the selected shipper, there is a function with the same name on the shipment report, where you just stand on one of the shipments of that shipper on the day of the collection. A list of all shipments from the selected shipper for the specified day will then be printed.</p>
<p>For an additional printout of the collection handover report:</p>
<ol>
<li>Stand on the shipments from that collection and use the <strong>Collection Handover Protocol</strong> function.</li>
<li>This will open a PDF file, which will then be printed from the browser window.</li>
</ol>
<h2 id="package-tracking">Package Tracking</h2>
<p>In the shipment overview you can see at a glance the status of the shipment. This status is not structured and is only informative without detail. To update this status on the shipment line, use the <strong>Update Track Status</strong> button.</p>
<p>If you want to view individual shipment statuses from the shipper, use the <strong>Track Status</strong> function on the shipment overview to open the individual shipment status page.</p>
<p><img src="media/BB_Tracking.png" alt="Creating a order"></p>
<h2 id="controls-and-restrictions">Controls and restrictions</h2>
<ul>
<li>If the Shipping agent Code and Shipping agent Service Code fields are filled out on the sales order, you must enter the recipient's phone number and email. If the fields are not filled in the receipt cannot be released.</li>
<li>When entering data on the shipment card (automatically by retrieving codes or manually) there is a <strong>Check Data</strong> function on the shipment card. After running it, you will be informed if the information transmitted is correct.</li>
<li>One shipping point can be assigned to one location. A 1:1 relationship is created.</li>
</ul>
<h2 id="account-information-and-checking-of-valid-carriers">Account information and checking of valid carriers</h2>
<p>To check your prepaid carriers, we have implemented the WHOIAM method, which lists information about your API connection and a list of active carriers.</p>
<p>To verify your account as a test or production account and to list the carriers, proceed as follows:
&lt;Překladač Microsoft Translator&gt;</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Shipping Agents</strong> and then choose the related link.</li>
<li>Select one of your carriers and click On <strong>Connection Test</strong> function</li>
<li>After verifying your account, the message <em>Service connection successful.</em> will pop up and you'll see information about your account and Active Carriers.</li>
<li>You can then close the window.</li>
</ol>
<h2 id="paperless-trade">Paperless Trade</h2>
<p>Paperless Trade is used to send an electronic invoice (in the case of a pro-forma Invoice) for a customs procedure encoded in PDF BASE64.</p>
<p>In the Parcels addon, you can use the function to automatically create and attach a PDF invoice to a shipment, provided that the shipment is created from a billed sales invoice.
If you create a shipment from a posted sales shipment, you must insert the PDF manually.</p>
<h3 id="create-a-shipment-from-a-posted-sales-invoice">Create a shipment from a posted sales invoice</h3>
<p>A prerequisite for use is the correct setting of Paperless trade.</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Parcels</strong> and then choose the related link.</li>
<li>Use the <strong>Create Shipment</strong>feature in your shipment list.</li>
<li>Enter the number of the posted sales invoice.</li>
<li>The system automatically generates PDF invoices and attaches them to the shipment.</li>
<li>Use <strong>Create a Shipment</strong> or <strong>Create a Shipment and Print a Label</strong></li>
<li>Continue processing the next shipment or close the form.</li>
</ol>
<h3 id="create-a-shipment-from-a-posted-sales-shipment">Create a shipment from a posted sales shipment</h3>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Parcels</strong> and then choose the related link.</li>
<li>Use the <strong>Create Shipment</strong>feature in your shipment list.</li>
<li>Enter the number of posted sales shipment</li>
<li>The system automatically fills in the data for the shipment.</li>
<li>On the <strong>Shipment Attachments tab</strong> click in the line and attach the previously manually generated PDF (pro-form invoice).</li>
<li>Use <strong>Create a Shipment</strong> or <strong>Create a Shipment and Print a Label</strong></li>
<li>Continue processing the next shipment or close the form.</li>
</ol>
<h2 id="availability-of-balíkobot-services">Availability of Balíkobot services</h2>
<p>Balíkobot also offers the possibility to view the status of individual service availability at <a href="https://status.balikobot.cz/">https://status.balikobot.cz/</a>.</p>
<p>There is also the possibility of notifications from Balíkobot either by e-mail, via teams, RSS and others.</p>
<h2 id="see-also">See also</h2>
<p><a href="parcels-setup.html">Setup - Parcels - Balíkobot Integration</a><br>
<a href="productivity-pack.html">Productivity Pack</a><br>
<a href="../index.html">ARICOMA Solution</a></p>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/ARICOMA-D365BC/AC-IB-dynamics365smb-docs/blob/master/business-central/ProductivityPack/parcels.md/#L1" class="contribution-link">Improve this document</a>
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