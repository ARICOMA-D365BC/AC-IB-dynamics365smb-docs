<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Spooler | Microsoft Docs </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Spooler | Microsoft Docs ">
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
<h1 id="spooler" sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="14">Spooler</h1>

<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="16">Spooler is used for communication of the Microsoft Dynamics Business Central system with external systems or data sources.</p>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="18">It has two basic functions:</p>
<ul sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="19">
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="19">Repository of unprocessed tasks and as an archive of communication documents.</li>
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="20">A tool for various types of communications and for processing incoming documents.</li>
</ul>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="22">Communication can take place both from Business Central to an external system or vice versa from an external system to Business Central. Spooler currently allows the use of a total of 5 communication protocols (this number is constantly growing).</p>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="24">This module has a multifaceted use – in data synchronization between systems (catalogues, system settings within holdings), in query communication with external systems (e.g. for B2B or B2C systems), for archiving and processing of automatic electronic documents (order systems, electronic deliveries, invoicing, confirmations).</p>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="26">In addition to the function of a general communication tool, in cooperation with the Electronic Invoicing module, it allows to provide fully paperless invoicing to customers, which is also recognized by state control authorities.</p>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="28">This module is built separately and does not interfere with other modules.</p>
<h2 id="in-buffer-and-out-buffer" sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="30">In Buffer and Out Buffer</h2>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="32">The main part of the spooler are two tables in which individual records of communication, including files, are stored.</p>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="34">The interface of both tables is almost the same. Each record in both the IN Buffer and OUT Buffer tables is assigned a unique <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="34">Document ID</strong> number. It also displays <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="34">Process Type</strong> and <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="34">Document Type</strong>. In addition, the record shows what task is being processed – <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="34">Task ID</strong> field and by which agent it is processed – <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="34">Agent ID</strong> field. The status of the record is indicated by the <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="34">Processed</strong> field. It takes the values No, Yes, Expired, and Delayed. <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="34">Source System ID</strong> field in the IN Buffer shows us where (from which system) the given record comes.</p>
<h3 id="not-sending-out-buffer-entry" sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="36">Not sending Out Buffer entry</h3>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="38">Unlike IN Buffer, there is an outgoing <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="38">Send sequence</strong> field on the OUT Buffer - here it is possible to exclude the Buffer item from the calculation of the sending sequence by code. When sending documents from OUT Buffer, the OUT Agent tries to keep the sending sequence as follows:</p>
<ul sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="41">
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="41"><p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="41">If an entry fails to be sent, no other items heading to the same destination will be sent (according to <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="41">Destination System ID</strong> and <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="41">Interaction Parameter</strong> fields from the recipient settings, regardless of the task).</p>
</li>
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="42"><p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="42">The functionality of the sending sequence works in such a way that if the <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="42">Interaction Parameter</strong> field is filled in in the OUT Buffer, it is processed according to that field.</p>
</li>
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="44"><p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="44">Holding the sending sequence in a spooler has 2 basic reasons:</p>
<ol sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="45">
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="45">They shall keep the sequence of documents to be sent.</li>
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="46">It saves time for the application server in case of malfunction of the connection - if it is necessary to send a larger number of documents to one place (for example, TCP address / port) and the connection is not working, so the attempt to send may take several seconds and it is undesirable for this attempt to be repeated with each item - in extreme cases it can stop the Application Server for several hours. It's a good idea to use the <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="46">Do not force the send sequence</strong> field after careful consideration.</li>
</ol>
</li>
</ul>
<h3 id="communication-of-in-and-out-buffer" sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="48">Communication of In and Out Buffer</h3>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="49">To view the communication tasks between the Out Buffer and the In Buffer, proceed as follows:</p>
<ol sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="51">
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="51"><p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="51">Choose the <img src="media/ui-search/search_small.png" sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="51" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="51">IN Buffer</strong> and then choose the related link.</p>
</li>
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="52"><p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="52">The <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="52">In Buffer</strong> page opens, where the function in <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="52">the Related</strong> section is used by <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="52">Entry</strong> function, where you will find the following functions:</p>
<ul sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="53">
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="53">Electronic Document Entries</li>
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="54">In Buffer - Response</li>
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="55">In Buffer - Response (incl. Archive)</li>
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="56">In Buffer - Query</li>
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="57">In Buffer - Query (incl. Archiv)</li>
</ul>
</li>
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="59"><p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="59">For Out Buffer, the options are similar.</p>
</li>
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="60"><p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="60">In the displayed rows, it is always sorted by <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="60">Document ID</strong>.</p>
</li>
</ol>
<h3 id="export-a-communication-document" sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="62">Export a communication document</h3>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="64">It is possible to export a document, display the document and display it as HTML on the IN Buffer and OUT Buffer forms - if an XSL template is defined for the spooler task. There is also the option to expire the record, change the note or manually send it to the archive.</p>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="66">To export a document, follow these steps:</p>
<ol sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="68">
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="68">Choose the <img src="media/ui-search/search_small.png" sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="68" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="68">OUT Buffer</strong> and then choose the related link.</li>
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="69">The <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="69">OUT Buffer</strong> page opens, where you can use the <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="69">Document Export</strong> feature.</li>
</ol>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="71">Another feature under the <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="71">Export Document</strong> banner is the Check Electronic Signature and View Signature Certificate option.</p>
<h3 id="raw-record" sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="73">Raw record</h3>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="75">If the given record is in the state Processed = No, it is possible to run the task manually from the form. This function is only available for In Buffer.</p>
<ol sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="77">
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="77">Choose the <img src="media/ui-search/search_small.png" sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="77" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="77">IN Buffer</strong> and then choose the related link.</li>
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="78">The <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="78">In Buffer</strong> page opens, where you can use the <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="78">Run Task</strong> function.</li>
</ol>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="80">The program then allows you to view an error due to which the task did not process. If the task did not process after manual execution, there may be a problem with the application server (e.g. user rights). On the <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="80">IN Buffer</strong> form, there is a <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="80">Send Task</strong> function that allows you to send the job from the IN Buffer.</p>
<h3 id="manually-insert-a-task-into-the-in-or-out-buffer" sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="82">Manually insert a task into the IN or OUT Buffer</h3>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="84">To insert a task into an IN or OUT Buffer, do the following:</p>
<ol sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="86">
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="86">Choose the <img src="media/ui-search/search_small.png" sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="86" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="86">IN Buffer</strong> and then choose the related link.</li>
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="87"><strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="87">IN Buffer</strong> page opens, where you select the <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="87">Actions</strong> section, then <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="87">Functions</strong>, and finally the <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="87">Insert Task</strong> function.</li>
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="88">On the <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="88">Insert In Buffer</strong> page, fill in the following fields as needed:
<ul sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="89">
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="89"><strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="89">Document</strong> where the assignment document is selected. If a spooler task is found according to the document header, the data in the form is automatically set, e.g. Agent ID, Process Type, Document Type. If not, it must be manually set.</li>
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="90"><strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="90">Non XML</strong> informs us whether the assigned document is not or is XML.</li>
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="91"><strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="91">Electronically signed</strong> – if this field is checked, the document is electronically signed. This can be checked in the Features section by selecting <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="91">View Signing Certificate</strong>. Below the same section there is also an option <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="91">Show date of signature</strong></li>
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="92">The <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="92">Priority</strong> field has only a record-keeping character.</li>
</ul>
</li>
</ol>
<h2 id="archive---in-a-out-buffer" sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="94">Archive - In a Out Buffer</h2>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="96">To view the In or Out Buffer archive items, do the following:</p>
<ol sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="98">
<li sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="98">Choose the <img src="media/ui-search/search_small.png" sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="98" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="98">Archived IN Buffer</strong> and then choose the related link.</li>
</ol>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="100">Entry will be accessed to the archive automatically during processing if this is set in the spooler task (Do not archive during processing, Do not archive at expiration) or in the spooler settings (Archive IN Buffer during processing and Archive IN Buffer during expiration, Archive OUT Buffer during processing and Archive OUT Buffer during expiration).</p>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="102">Items can also be accessed manually from the IN Buffer or OUT Buffer form using the <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="102">Move to Archive</strong> function.</p>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="104">Another way to get items into the archive is using  <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="104">reports R4002900 Move IN Buffer to Archive</strong> and <strong sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="104">R4002901 Move OUT Buffer to Archive</strong>.</p>
<h2 id="see-also" sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="106">See also</h2>
<p sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="107"><a href="spooler-setup.html" sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="107">Spooler - Setup</a>
<a href="productivity-pack.html" sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="108">Productivity Pack</a><br>
<a href="../index.html" sourcefile="ProductivityPack/spooler.md" sourcestartlinenumber="109">ARICOMA Solutions</a></p>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/ARICOMA-D365BC/AC-IB-dynamics365smb-docs/blob/master/business-central/ProductivityPack/spooler.md/#L1" class="contribution-link">Improve this document</a>
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