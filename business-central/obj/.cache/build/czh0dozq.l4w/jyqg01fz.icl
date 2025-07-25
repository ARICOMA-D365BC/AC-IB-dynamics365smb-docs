<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Aricoma - Pack Tracking Basic Setup | Microsoft Docs </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Aricoma - Pack Tracking Basic Setup | Microsoft Docs ">
    <meta name="generator" content="docfx 2.59.4.0">
    
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" href="../styles/docfx.vendor.css">
    <link rel="stylesheet" href="../styles/docfx.css">
    <link rel="stylesheet" href="../styles/main.css">
    <meta property="docfx:navrel" content="../TOC.html">
    <meta property="docfx:tocrel" content="../StreamlineTools/TOC.html">
    
    
    
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
<h1 id="packaging-records---setup" sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="15">Packaging records - Setup</h1>

<p sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="16">To ensure the functioning of the add-on module <strong sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="16">Pack Tracking Basic</strong>, it is necessary to perform the necessary setup steps.</p>
<h2 id="establish-a-packaging-statement" sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="18">Establish a Packaging Statement</h2>
<p sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="19">The necessary number of different Packaging Statements can be created in the system. Choose the <img src="media/ui-search/search_small.png" sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="19" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="19">Packing Statements</strong> and then choose the related link.</p>
<div class="NOTE" sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="21">
<h5>Note</h5>
<p sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="22">If you are going to import the provided EKO-KOM parameterization files, you must create a Packaging Report with the code <strong sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="22">EKO-KOM</strong>.</p>
</div>
<h2 id="parameterization-of-the-eko-kom-packaging-report" sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="24">Parameterization of the EKO-KOM Packaging Report</h2>
<p sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="25">The add-on module Pack Tracking is supplied with excel files <em sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="25">ekokom_def.xlsx</em> and <em sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="25">ekokom.xlsx</em> containing the parameterization for <strong sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="25">EKO-KOM Packaging Statements</strong>.<br>
The parameterisation files can be uploaded to the system using the <strong sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="26">RapidStart Service</strong>.&lt;s</p>
<h2 id="packing-statement-element-definition" sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="28">Packing Statement Element Definition</h2>
<p sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="29">For each created report, it is necessary to define its elements. Choose the <img src="media/ui-search/search_small.png" sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="29" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="29">Packing Statement Element Def.</strong> and then choose the related link.
Elements in the report can be grouped into positions on the report. A total of 10 positions can be defined (grouping of elements). Elements within a position are further assigned a code.</p>
<p sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="32">Packing Statement Element Definition form fields:</p>
<table sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="34">
<thead>
<tr sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="34">
<th sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="34">Field</th>
<th sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="34">Description</th>
</tr>
</thead>
<tbody>
<tr sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="36">
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="36"><strong sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="36">Statement Code</strong></td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="36">The report code created in the previous step</td>
</tr>
<tr sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="37">
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="37"><strong sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="37">Position</strong></td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="37">User-specified group of schedule elements</td>
</tr>
<tr sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="38">
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="38"><strong sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="38">Code</strong></td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="38">Element code within a position</td>
</tr>
<tr sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="39">
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="39"><strong sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="39">Description</strong></td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="39">Description of the schedule element</td>
</tr>
<tr sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="40">
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="40"><strong sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="40">Statement Placement</strong></td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="40">Text descriptive information</td>
</tr>
</tbody>
</table>
<p sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="43">For example, you can create a table with the following values:</p>
<table sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="45">
<thead>
<tr sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="45">
<th sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="45">Reporting code</th>
<th sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="45">Position</th>
<th sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="45">Code</th>
<th sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="45">Description</th>
</tr>
</thead>
<tbody>
<tr sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="47">
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="47">EKO-KOM</td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="47">P1</td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="47">1</td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="47">Single-use packaging</td>
</tr>
<tr sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="48">
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="48">EKO-KOM</td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="48">P1</td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="48">2</td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="48">Reusable packaging</td>
</tr>
<tr sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="49">
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="49">EKO-KOM</td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="49">P2</td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="49">1</td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="49">Charged</td>
</tr>
<tr sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="50">
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="50">EKO-KOM</td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="50">P2</td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="50">2</td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="50">Prepaid</td>
</tr>
<tr sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="51">
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="51">EKO-KOM</td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="51">P2</td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="51">3</td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="51">Unpaid</td>
</tr>
</tbody>
</table>
<h2 id="creating-elements-in-a-packing-statements-defining-a-custom-statement" sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="53">Creating Elements in a Packing Statements (Defining a Custom Statement)</h2>
<p sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="55">Definice vlastního výkazu se provádí založením prvků Výkazu obalů. Choose the <img src="media/ui-search/search_small.png" sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="55" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter ** Packing Statement Elements** and then choose the related link. In the form, individual statement lines are defined by selecting from previously defined elements for each statement position. The <em sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="55">Description</em> field is then added by the system depending on the field on the <strong sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="55">Packing Statement Element Definition</strong>page.</p>
<p sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="57">For example <strong sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="57">Packing Statement Elements</strong> page might look like this:</p>
<table sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="59">
<thead>
<tr sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="59">
<th sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="59">Reporting code</th>
<th sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="59">Code</th>
<th sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="59">Description</th>
</tr>
</thead>
<tbody>
<tr sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="61">
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="61">EKO-KOM</td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="61">13</td>
<td sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="61">Single-use packaging free of charge</td>
</tr>
</tbody>
</table>
<h2 id="creating-exceptions-in-the-packaging-statements" sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="63">Creating exceptions in the Packaging Statements</h2>
<p sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="65">In each <strong sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="65">Packaging Statement</strong> that you create, you can define exceptions, specified by the status of the lines in the Item journal, that will not be included in the report. Choose the **Lightbulb that opens the Tell Me feature.<img src="media/ui-search/search_small.png" sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="65" alt="Tell me what you want to do" title=", icon, enter ">Packing Stat. El. Exceptions and then choose the related link.  The exception is defined by the data entered in the <strong sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="65">Movement Type</strong>, <strong sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="65">Field no.</strong>, <strong sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="65">Field Value</strong> and <strong sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="65">Position</strong> fields (in the report). You must also specify the <strong sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="65">Element Code</strong> to create an exception.</p>
<h2 id="see-also" sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="67">See also</h2>
<p sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="68"><a href="pack-tracking-basic.html" sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="68">Packaging records</a><br>
<a href="finance-pack.html" sourcefile="FinancialPack/pack-tracking-basic-setup.md" sourcestartlinenumber="69">Financial Pack</a></p>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/ARICOMA-D365BC/AC-IB-dynamics365smb-docs/blob/master/business-central/FinancialPack/pack-tracking-basic-setup.md/#L1" class="contribution-link">Improve this document</a>
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