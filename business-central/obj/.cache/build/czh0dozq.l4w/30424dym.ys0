<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Examples of use </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Examples of use ">
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


<p>Exchange Shared Mailbox</p>
<blockquote>
<p>Update: 12.04.2023</p>
</blockquote>
<p>The <strong>Exchange Shared Mailbox</strong> solution allows email messages to be extracted from a shared mailbox to an IN Buffer where the emails can be further processed.</p>
<div class="IMPORTANT">
<h5>Important</h5>
<p><strong>Exchange Shared Mailbox is an extension of the functionality of the Spooler addon</strong>.</p>
</div>
<h2 id="examples-of-use">Examples of use</h2>
<ul>
<li>Incoming purchase invoices in PDF format that arrive in the shared mailbox are automatically filed as inbox. Alternatively:
<ul>
<li>Purchase Invoices are created from them in Business Central.</li>
<li>They are forwarded via Kofax's OCR web service and the invoice is filed back with the data.</li>
</ul>
</li>
<li>Incoming purchase invoices in XML format (e.g. EDI) that arrive in the shared mailbox are automatically filed as inbox and Purchase Invoices are created from them in Business Central.</li>
<li>Incoming sales orders and inquiries with attachments that arrive in the shared mailbox are automatically filed as sales documents with attachments (published documents) in Business Central.</li>
<li>Incoming catalogues in XML/XLS format that arrive in the shared mailbox are automatically processed into non-stock structures in Business Central.</li>
<li>Other typical options:
<ul>
<li>Order confirmation</li>
<li>Shipments</li>
</ul>
</li>
</ul>
<h2 id="usage">Usage</h2>
<p>When an email is sent to the selected shared mailbox that is set as the default for extraction, it is automatically extracted and then disappears from the inbox where it is moved to the archive. At this point, the email can be considered <strong>extracted</strong> and can be found in the <strong>IN buffer</strong>.</p>
<p>To find a mined email:</p>
<ol>
<li>Select the <img src="media/ui-search/search_small.png" alt="Lightbulb icon to open the Tell Me feature" title="Tell me what you want to do">, type <strong>IN Buffer</strong>, and then select the associated link.</li>
<li>This will list all the files uploaded in IN Buffer, and will include the attachment records from the email you just extracted.</li>
<li>The following fields contain selected information that is available for the file:</li>
</ol>
<table>
<thead>
<tr>
<th>Field Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Task ID</strong></td>
<td>Task that will process the attachment</td>
</tr>
<tr>
<td><strong>Processed</strong></td>
<td>Indicates if the attachment has already been processed</td>
</tr>
<tr>
<td><strong>Agent ID</strong></td>
<td>The agent that performed the extraction</td>
</tr>
<tr>
<td><strong>File name</strong></td>
<td>Full name of the attachment</td>
</tr>
<tr>
<td><strong>Subject</strong></td>
<td>Subject of the email from which the attachment was extracted</td>
</tr>
<tr>
<td><strong>Recipients</strong></td>
<td>Recipients of the email from which the attachment was extracted</td>
</tr>
<tr>
<td><strong>Recipients of the copy</strong></td>
<td>CC recipients of the email from which the attachment was extracted</td>
</tr>
</tbody>
</table>
<ol start="4">
<li>If a task is filled in the <strong>Task ID</strong> field, then clicking the <strong>Start Task</strong> action will process the attachment and set the value of the <strong>Processed</strong> field to <em>Yes</em>.</li>
</ol>
<p>For more information on using the IN Buffer itself, visit the <a href="spooler.html">help page</a>.</p>
<h2 id="vizte-také">Vizte Také</h2>
<p><a href="exchange-shared-mailboxes-setup.html">Exchange Shared Mailbox - Setup</a><br>
<a href="spooler.html">IN Buffer</a><br>
<a href="productivity-pack.html">Productivity Pack</a></p>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/ARICOMA-D365BC/AC-IB-dynamics365smb-docs/blob/master/business-central/Solutions/exchange-shared-mailboxes.md/#L1" class="contribution-link">Improve this document</a>
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