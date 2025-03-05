<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>ARICOMA SOLUTIONS - SK Legistaltive Pack| Microsoft Docs </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="ARICOMA SOLUTIONS - SK Legistaltive Pack| Microsoft Docs ">
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
<h1 id="vat-statements---setup" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="14">VAT Statements - Setup</h1>

<p sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="16">The standard functionality of the system is used to generate the VAT statement. This functionality has been modified by the specifics of Slovak reporting.</p>
<p sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="18">To ensure the correct calculation of the amounts of the VAT Statement and export to the required XML structure according to Slovak legislation, it is necessary to set up several areas listed below.</p>
<h2 id="general-ledger-setup" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="20">General Ledger Setup</h2>
<p sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="22">To activate Slovak functionality, follow these steps:</p>
<ol sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="24">
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="24">Choose the <img src="media/ui-search/search_small.png" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="24" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="24">General Ledger Setup</strong> and then choose the related link.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="25">On the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="25">General Ledger Setup</strong> page you must select<strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="25">SK</strong> in <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="25">Legislation</strong>field.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="26">Confirm with the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="26">OK</strong> button.</li>
</ol>
<h2 id="setting-up-xml-schemas" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="28">Setting up XML schemas</h2>
<p sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="30">Import the current XML schema template into the XML schemas by following these steps:</p>
<ol sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="32">
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="32">Choose the <img src="media/ui-search/search_small.png" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="32" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="32">XML Schemas</strong> and then choose the related link.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="33">On the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="33">XML Schemas</strong> page, in the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="33">Actions</strong> section, select the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="33">Load Schema</strong>action.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="34">An import window will open where you select the appropriate XML file.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="35">After import, a new line appears on the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="35">XML Schemas</strong>.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="36">In the appropriate row for each XML, select the correct number in the SML portID column.
For VAT Report from 2018 it is <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="37">52068861</strong>, for VAT Report until 2017 it is <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="37">52068860</strong>, for VAT Control Report <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="37">52068903</strong> nd for Summary Report that is <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="37">52068870</strong>.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="38">In the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="38">Assigned to legislation</strong> field, select <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="38">SK</strong>.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="39">Confirm with the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="39">OK</strong> button.</li>
</ol>
<h2 id="vat-statement-template-settings" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="41">VAT Statement template settings</h2>
<p sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="43">Use the following procedure to set up:</p>
<ol sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="45">
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="45">Choose the <img src="media/ui-search/search_small.png" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="45" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="45">VAT Statement Templates</strong> and then choose the related link.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="46">On the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="46">VAT Statement Templates</strong> page, select <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="46">Use XML Schema</strong> in the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="46">XML SK Format</strong> column.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="47">On the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="47">VAT Report Templates</strong> page, select the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="47">Related</strong>section, then the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="47">Template</strong> section and open the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="47">Report Names</strong>.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="48">On the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="48">VAT Statement</strong> page, select the appropriate schema for each line that will be used when you export the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="48">XML Schema</strong> field.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="49">Confirm with the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="49">OK</strong> button.</li>
</ol>
<p sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="51">You can see an example in the picture below:
<img src="media/VAT_statement-template.png" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="52" alt="Import of unreliable VAT payers from xml format"></p>
<h2 id="set-up-vat-statement-lines" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="54">Set up VAT Statement lines</h2>
<p sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="56">To ensure proper VAT reporting, you need to set up fields in the VAT statement lines:</p>
<ol sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="58">
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="58">Choose the <img src="media/ui-search/search_small.png" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="58" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="58">VAT Statements</strong> and then choose the related link.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="59">For each line in the sales tax statement, define the following fields:</li>
</ol>
<ul sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="61">
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="61">Source Code filter</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="62">Document type</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="63">Document type filter</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="64">XML schema element ID - the VAT attribute code will be automatically filled in by the fill-in</li>
</ul>
<ol start="3" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="66">
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="66">Confirm with the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="66">OK</strong> button.</li>
</ol>
<p sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="68">You can see an example in the picture below:
<img src="media/VAT_statement.png" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="69" alt="Import of unreliable VAT payers from xml format"></p>
<h2 id="set-up-source-codes-for-internal-corrective-documents" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="71">Set up source codes for internal corrective documents</h2>
<p sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="73">Use the following procedure to set up:</p>
<ol sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="75">
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="75">Choose the <img src="media/ui-search/search_small.png" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="75" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="75">Source Code Setup</strong> and then choose the related link.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="76">On the Sales FastTab, enter INTCREDIT in the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="76">Sales internal credit memo</strong> field and DEBITNOTE in the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="76">Sales debit note</strong> field. The values ​​must first be entered in the Source Codes</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="77">On the Purchase FastTab, enter INTCREDIT in the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="77">Purchase internal credit memo</strong> field and DEBITNOTE in the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="77">Purchase debit note</strong> field. The values ​​must first be entered in the Source Codes</li>
</ol>
<p sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="79"><img src="media/setup_source_code.png" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="79" alt="IImport of unreliable VAT payers from xml format"></p>
<h2 id="setting-up-domestic-self-assessment" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="81">Setting up Domestic Self Assessment</h2>
<p sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="83">The standard Tariff Numbers tab is used to set up commodities that fall under the domestic self-taxation regime.
In General ledger setup and VAT posting setup, you can enable system controls when you post these commodities.</p>
<h3 id="set-up-tariff-numbers" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="86">Set up Tariff Numbers</h3>
<ol sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="88">
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="88">Choose the <img src="media/ui-search/search_small.png" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="88" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="88">Tariff Numbers</strong> and then choose the related link.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="89">Define each commodity code and tick the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="89">Domestic Self Assessment</strong> field for these code.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="90">For codes in Domestic Self Assessment mode, enter the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="90">Statement Code</strong> field.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="91">Confirm with the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="91">OK</strong> button.</li>
</ol>
<h3 id="general-ledger-setup---domestic-self-assessment" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="93">General Ledger Setup - 	Domestic Self Assessment</h3>
<ol sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="95">
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="95">Choose the <img src="media/ui-search/search_small.png" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="95" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="95">General Ledger Setup</strong> and then choose the related link.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="96">On the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="96">General Ledger Setup</strong> define <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="96">tVAT Base for Domestic Self As.</strong> and <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="96">Due Date of from Self Ass.</strong> fields.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="97">Confirm with the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="97">OK</strong> button.</li>
</ol>
<h3 id="vat-posting-setup---domestic-self-assessment" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="99">VAT Posting Setup - Domestic Self Assessment</h3>
<ol sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="101">
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="101">Choose the <img src="media/ui-search/search_small.png" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="101" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="101">VAT Posting Setup</strong> and then choose the related link.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="102">On the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="102">VAT posting setup</strong> tab, you can set up checks for Domestic Self Assessment on individual combinations of VAT posting groups in the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="102">Reverse Charge Check</strong> field.</li>
<li sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="103">Confirm with the <strong sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="103">OK</strong> button.</li>
</ol>
<h2 id="see-also" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="105">See also</h2>
<p sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="107"><a href="../index.html" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="107">ARICOMA Solutions</a><br>
<a href="sk-legislative-pack.html" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="108">SK Legislative Pack</a><br>
<a href="sk-vat-statement-export.html" sourcefile="SK/sk-vat-statement-setup.md" sourcestartlinenumber="109">VAT Statement - Export</a></p>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/ARICOMA-D365BC/AC-IB-dynamics365smb-docs/blob/master/business-central/SK/sk-vat-statement-setup.md/#L1" class="contribution-link">Improve this document</a>
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