<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>FA - Inventory </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="FA - Inventory ">
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
<h1 id="fixed-assets-inventory">Fixed Assets Inventory</h1>

<p>The <strong>Fixed Assets Inventory</strong> application is used for physical inventory of fixed assets in Dynamics 365 Business Central system using <strong>QR codes</strong>.</p>
<p>No more chaotic spreadsheets, lost papers or endless searching for assets. It brings an efficient inventory solution using QR codes and mobile devices that combines simplicity, accuracy and time savings. With fixed assets inventory using QR codes, you get:</p>
<h2 id="solution-benefits">Solution Benefits</h2>
<ul>
<li><strong>Speed and efficiency</strong> – Just scan the code or add a note to it and you have the basis of the inventory ready.</li>
<li><strong>Data accuracy</strong> – Minimal error rate thanks to automatic asset identification.</li>
<li><strong>Online overview</strong> – Asset data available anytime and anywhere.</li>
<li><strong>Easy change management</strong> – Change of location, cost center or responsible person? Just a few clicks.</li>
<li><strong>Ecological solution</strong> – No paperwork, everything digital.</li>
</ul>
<h2 id="how-the-inventory-works">How the inventory works</h2>
<p><strong>1. Inventory preparation on computer</strong><br>
- User creates an <strong>inventory journal</strong> in the system.<br>
- Defines and prints QR codes that are attached to assets.</p>
<p><strong>2. Field inventory processing (mobile / scanner)</strong><br>
- Just <strong>scan the QR code</strong> of the asset – the system immediately identifies the item.
- You can <strong>add notes</strong>, e.g. suggestions for changing location, serial number or responsible person.<br>
- <strong>GPS location</strong> is automatically saved, which helps to make the records more accurate.<br>
- Thanks to map display, you can <strong>navigate to the last known location of the asset</strong>.</p>
<p><img src="media/fa-inventory-mobile-gps-small.png" alt="Inventory journal - suggestion"></p>
<p><strong>3. Completing the inventory in the office</strong><br>
- The system processes requests for changes (e.g. new location code, cost center, employee).<br>
- You can also perform <strong>&quot;desk inventory&quot;</strong> – e.g. where there is no access to the asset.<br>
- The inventory is approved and posted.<br>
- Outputs can be <strong>printed</strong> or <strong>published to SharePoint</strong> for further use.</p>
<p><img src="media/fa-inventory-pc.png" alt="Inventory journal - suggestion"></p>
<h3 id="why-choose-fixed-assets-inventory-using-qr-codes">Why choose fixed assets inventory using QR codes</h3>
<ul>
<li><strong>Time savings</strong> and error elimination.</li>
<li><strong>Precise asset localization</strong> thanks to GPS.</li>
<li><strong>Full mobility</strong> – inventory from anywhere.</li>
<li><strong>Immediate change records</strong> without manual rewriting.</li>
</ul>
<h3 id="fixed-assets-inventory--preparation-on-computer">Fixed Assets Inventory – preparation (on computer)</h3>
<p><strong>Preparation and generation of inventory journals for individual cost centers, locations, employees (on individual journal batches).</strong></p>
<ul>
<li><p>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature" title="Tell me what you want to do"> icon, enter FA Inventory Journal and then choose the related link.</p>
</li>
<li><p>On the FA Inventory Journal page, select or create a new Batch Name. To create a new batch, select the New action.</p>
</li>
<li><p>On the <strong>FA Inventory Journal</strong> page, select Actions/Functions <strong>Calculate Asset Inventory.</strong></p>
</li>
</ul>
<p><img src="media/fa-inventory-calculate.png" alt="Inventory journal - suggestion"></p>
<p>The <strong>Calculate FA Inventory</strong> action contains these fields:</p>
<ul>
<li><strong>Posting Date</strong> – date for which we will perform the inventory.</li>
<li><strong>Document No.</strong> – document number with which we want to post the inventory.</li>
<li><strong>Depreciation Book Code</strong> – select the depreciation book from which you want to select assets.</li>
<li><strong>Filter</strong> – filtering assets for inventory.</li>
<li><strong>No.</strong> – select asset numbers you want to inventory.</li>
<li><strong>FA Location Code</strong> – select the location where you want to inventory assets.</li>
<li><strong>Responsible Employee</strong> – select the employee whose assets you want to inventory.</li>
<li><strong>Cost Center Code (Global Dimension 1)</strong> – select the cost center where you want to inventory assets.</li>
<li><strong>Job Code (Global Dimension 2)</strong> – select the job for which you want to inventory assets.</li>
</ul>
<p><img src="media/fa-inventory-journal-dimensions.png" alt="Inventory journal"></p>
<p><strong>Printing labels or inventory reports for manual processing (supplementary processing method).</strong></p>
<ul>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature" title="Tell me what you want to do"> icon, enter <strong>FA Inventory Label</strong> and then choose the related link.</li>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature" title="Tell me what you want to do"> icon, enter <strong>FA Inventory Journal</strong> and then choose the related link.</li>
<li>On the <strong>FA Inventory Journal</strong> page, select Actions/Posting <strong>FA Inventory List</strong>. Printing a form for manual inventory processing (supplementary processing method).</li>
</ul>
<p><img src="media/fa-inventory-qr.png" alt="Label printing"></p>
<h3 id="fixed-assets-inventory--processing-on-mobile-device">Fixed Assets Inventory – processing (on mobile device)</h3>
<ul>
<li>On your mobile device, choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature" title="Tell me what you want to do"> icon or directly the link to <strong>FA Inventory Journal</strong> (mobile).</li>
<li>Through the icon in the bottom right corner, you switch to the list of actions above the inventory journal. Through the <strong>Select Journal</strong> action, select the correct inventory list <strong>Batch Name</strong>.</li>
<li>Using the <strong>Scan</strong> action, you switch to a page where you then load individual QR codes of assets and can optionally add a <strong>Note</strong> to them. It is advisable to define <strong>Notes</strong> in <strong>Standard Text Codes</strong> so that the user does not have to type the entire text. If the asset is not in the inventory journal, the system suggests and automatically creates a new line. If the <strong>Save GPS location automatically when scanning</strong> option is checked in <strong>FA Physical Inventory Setup</strong>, the system automatically saves GPS coordinates when scanning.</li>
<li>Using the <strong>Online Maps</strong> action, it is possible to display the asset's location on a map or navigate to the asset according to saved <strong>GPS coordinates.</strong></li>
</ul>
<p><img src="media/fa-inventory-scan.png" alt="Inventory journal"></p>
<h3 id="fixed-assets-inventory--manual-processing-supplementary-processing-method">Fixed Assets Inventory – manual processing (supplementary processing method)</h3>
<ul>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature" title="Tell me what you want to do"> icon, enter <em><strong>FA Inventory Journal</strong></em> and then choose the related link.</li>
<li>On the <em><strong>FA Inventory Journal</strong></em> page, select the correct inventory list Batch Name.</li>
<li>According to the completed inventory list (paper document), run the action:
<ul>
<li>Set Checked on All</li>
<li>Set Checked on Selected lines of the inventory journal</li>
</ul>
</li>
</ul>
<h3 id="fixed-assets-inventory--completion">Fixed Assets Inventory – completion</h3>
<h4 id="performing-and-posting-recorded-changes">Performing and posting recorded changes</h4>
<ul>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature" title="Tell me what you want to do"> icon, enter <strong>FA Inventory Journal</strong> and then choose the related link.</li>
<li>On the <strong>FA Inventory Journal</strong> page, select the correct inventory list <strong>Batch Name</strong>.</li>
<li>According to the text note <strong>Description</strong> or according to the <strong>Inventory List (paper document)</strong> for the selected asset, fill in the fields:
<ul>
<li><strong>New FA Location Code</strong></li>
<li><strong>New Responsible Employee</strong></li>
<li><strong>New Cost Center</strong> (Global Dimension 1)</li>
<li><strong>New Job</strong> (Global Dimension 2)</li>
<li><strong>New Serial No.</strong></li>
</ul>
</li>
<li>On the <strong>FA Inventory Journal</strong> page, select the correct inventory list <strong>Batch Name</strong>.</li>
<li>Run the <strong>Post</strong> or <strong>Post and Print</strong> action. Posting actions in the inventory journal:
<ul>
<li>performs changes on the asset card:
<ul>
<li><strong>FA location,</strong></li>
<li><strong>responsible employee,</strong></li>
<li><strong>cost center</strong> (Global Dimension 1),</li>
<li><strong>job</strong> (Global Dimension 2),</li>
<li><strong>serial number.</strong></li>
</ul>
</li>
<li>and creates records of performed changes:
<ul>
<li>FA Physical Inventory Entries.</li>
<li>FA Inventory Journal.</li>
</ul>
</li>
</ul>
</li>
</ul>
<h3 id="evidence-on-the-asset-card">Evidence on the asset card</h3>
<ul>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature" title="Tell me what you want to do"> icon, enter <strong>Fixed Asset</strong> and then choose the related link.</li>
<li>On the <strong>Fixed Asset</strong> page, there are new fields:
<ul>
<li><strong>Last Inventory Date</strong></li>
<li><strong>GPS Latitude</strong></li>
<li><strong>GPS Longitude</strong></li>
</ul>
</li>
</ul>
<p><img src="media/fa-inventory-get-gps.png" alt="Asset card - online maps">
<img src="media/fa-inventory-maps.png" alt="Asset location on map"></p>
<h2 id="related-information">Related information</h2>
<p><a href="fa-inventory-setup.html">Fixed Assets Inventory - Setup</a><br>
<a href="solutions.html">ARICOMA Solutions</a></p>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/ARICOMA-D365BC/AC-IB-dynamics365smb-docs/blob/master/business-central/Solutions/fa-inventory.md/#L1" class="contribution-link">Improve this document</a>
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