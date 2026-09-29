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
<h1 id="spooleru-setup">Spooleru Setup</h1>

<p>Spooler is used for communication of the Business Central system with external systems or data sources.</p>
<h2 id="basic-spooler-settings">Basic Spooler settings</h2>
<p>To set up a spooler, follow these steps:</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Spooler Setup</strong> and then choose the related link.</li>
<li>The <strong>Spooler Setup</strong> page opens, where there are setting and information fields:
<ul>
<li><strong>Source System</strong>, which refers to the source system - how the system is identified in communication.</li>
<li><strong>Unprocessed In Task</strong> and <strong>Unprocessed Out Task</strong> number of pending taks in In Buffer or Out Buffer.</li>
<li><strong>Calculate IN Buffer Doc. Size</strong> a <strong>Calculate OUT Buffer Doc. Size</strong> determine whether to count the sizes of documents displayed in IN and OUT Buffers.</li>
<li><strong>Archive IN Buffer on Process</strong> and <strong>Archive IN Buffer on Expirate</strong> determine when and if IN Buffer entries should be archived.</li>
<li><strong>Archive OUT Buffer on Processg</strong> and <strong>Archive Iou Buffer on Expirate</strong> determine when and if OUT Buffer entries should be archived.</li>
<li><strong>Dont Search IN Msg in Archiv</strong> determines whether to search for incoming message by unique GUID (Document ID) in archived entries.</li>
<li><strong>Dont Search Resp. in Archive</strong> determines whether to search for an answer by the unique GUID (Document ID) in the archived entries.</li>
<li><strong>Maximal Entries in Bufffer</strong> limits the number of items. If 0 is entered, it is an unlimited number of entries in Buffers.</li>
<li><strong>Certificate Pfx</strong> – if you enter *, the field shows that an electronic signature is stored there.</li>
<li>The <strong>Pfx Certificate Path</strong> field is used if the certificate is not stored directly in the database.</li>
<li><strong>Pfx certificate password</strong> - filled in if used.</li>
<li><strong>Do not enable electronic signing</strong> is used to turn the use of electronic signatures on or off. Unchecked means do not use an electronic signature.</li>
</ul>
</li>
</ol>
<p><img src="media/spooler-setup.png" alt="Spooleru Setup"></p>
<ol start="3">
<li>To import an electronic signature, use <strong>the Pfx Certificate</strong> and the <strong>Impote...</strong> function.</li>
<li>You can also view, export or delete your signature using <strong>Export, Delete and View</strong> features.</li>
<li>You can then close the page.</li>
</ol>
<h2 id="spooler-agents">Spooler Agents</h2>
<p>To set up spooler agents, follow these steps:</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Agents</strong> and then choose the related link.
The <strong>Agents</strong> page opens, where you must fill in the following fields:
<ul>
<li>The <strong>Agent ID and Description</strong> fields are used to differentiate between agents.</li>
<li><strong>Type</strong> distinguishes agents
<ul>
<li>IN - used for incoming communications. It receives messages from the surroundings and stores them in the IN Buffer.</li>
<li>OUT - passes through the OUT Buffer and sends messages to the surroundings.</li>
<li>Procesing - passes through task in IN Buffer, processes IN Buffer task and stores them in out buffer.</li>
</ul>
</li>
<li><strong>CU Agent</strong> is set automatically, but can be overridden to another.</li>
<li><strong>Interaction Interval (s)</strong> is used for active agents. Specifies the time interval in which it activates and performs the activity.</li>
<li><strong>Additional Iteration Parameters</strong> are basically used by active agents. Some agents may have multiple parameters. For example, a disk agent can collect data from multiple directories.</li>
<li>For IN Agents, the <strong>Default Task ID</strong> field is used. If the Spooler job is not found by XML header, the default job is taken.</li>
<li><strong>Switch Agent After Number of Errors</strong> is only for OUT Agents and Process Agents. If the agent fails to process the task (eg 5 errors), the ID of the new agent that will try to process the task can be set in the Change to agent field.</li>
<li><strong>Log</strong> specifies whether and how it is written to the application log. Values can be Never, By Task, and Always.</li>
<li><strong>Reply only to XML</strong> is for IN TCP Agents and shows whether to reply only to XML</li>
<li><strong>Interaction Method and Interaction Parameter</strong> is only for IN Agents. The communication parameter is set according to the selected type of communication:
<ul>
<li>TCP – port [comma] Timeout</li>
<li>MSMQ – Name MSMQ</li>
<li>Pipe – Name named PIPE</li>
<li>HTTP – address http</li>
<li>Disk – path [comma] filter file</li>
</ul>
</li>
</ul>
</li>
</ol>
<p>For disk and HTTP (timer) In agent, it is possible to set the default task ID for each Interaction parameter in order to distinguish what type of task the received message will be subsequently processed.</p>
<p>All agents are either passive or active. The active agent activates itself and performs some activity. The passive agent waits for a stimulus from the outside, for some interruption of the system, and then reacts to this change.</p>
<p>The passive agent runs alone on the application server. IN Agent TCP and IN Agent MSMQ are passive agents.</p>
<ol start="2">
<li>After filling in the fields, the page can be closed.</li>
<li>If a user needs to run the agent manually, they can do so in the <strong>Process</strong> group with <strong>Run Agent</strong> feature.</li>
</ol>
<h2 id="spooler-tasks">Spooler Tasks</h2>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Spooler Tasks</strong> and then choose the related link.</li>
<li>On the <strong>Spooler Tasks</strong> page, you can create a row for a new task that contains the following fields:</li>
</ol>
<ul>
<li>The <strong>Task ID</strong> field indicates the spooler job.</li>
<li>The <strong>Type</strong> field determines whether the job is for IN Buffer (In) or out Buffer (Out).</li>
<li><strong>Interaction type</strong> field is used only for OUT tasks. The type of communication is similar to that of agents, ie. Disk, MSMQ, Pipe, HTTP, TCP and E-mail.</li>
<li><strong>Description</strong> is used to describe the task.</li>
<li>The <strong>Default priority</strong> field indicates the order in which tasks are processed.</li>
<li>The <strong>Agent ID</strong> field determines which agent will handle the spooler task. For IN tasks it will be a Process Agent and for OUT jobs it will be an OUT agent.</li>
<li>The <strong>XDR</strong> field shows the existence of the XML document schema (*).</li>
<li>The <strong>Processing codeunit ID</strong> field indicates which codeunitu the agent runs over the Buffer entry. For OUT tasks, the field is filled in automatically when selecting the type of communication</li>
<li>The <strong>Process Type</strong> and <strong>Document Type</strong> fields recognize the task. It is used to find the task according to the header of the XML document in Buffer.</li>
<li>The <strong>Destination System</strong> field can be filled in only for OUT tasks if the target system is not specified directly from the XML document header.</li>
<li>The <strong>Last Document Number</strong> field uses the system internally, is not set and is used only for OUT jobs.</li>
<li>In the <strong>Expirate After</strong> field, a duration (Duration variable) is entered.</li>
<li>The <strong>Log</strong> field determines whether and how it is written to the application log. Values can be Never, By Task, and Always.</li>
<li>The <strong>Answer Type</strong> fields are used only by IN jobs.
<ul>
<li>Confirmation - the task is inserted into the IN Buffer.</li>
<li>Result – the job is inserted into the IN Buffer and processing starts immediately.</li>
</ul>
</li>
<li>The <strong>XSL Template</strong> field is used to display the document in HTML.</li>
<li>Use <strong>Wait after numbers of errors</strong> and <strong>Wait after Error</strong> fields to specify how many errors to wait for how long to try to process again.</li>
<li><strong>On Insert Codeunit ID</strong> – allows you to run codeunita when inserted into buffer.</li>
<li><strong>Do not force send order</strong> field – If this field is checked, the job items do not participate in the calculation to enforce the sending sequence (check only on jobs where it is explicitly undesirable to enforce the sending sequence. For example, for sending documents by E-Mail (here it does not have to be true that if one document is not sent (for example, because of the size), then the sending of others will not pass).</li>
<li>The <strong>Electronically Sign</strong> field is for OUT jobs only. Specifies whether the job is automatically signed when inserted into Buffer.</li>
<li>The <strong>XML Encoding</strong> field specifies how the XML document will be encoded.</li>
<li>The <strong>Dont Archive on Expirate and Dont Archive on Process</strong> fields determine when and whether Buffer entries should be archived. These fields have a higher priority than the fields in the spooler settings.</li>
<li>Use the <strong>Dont Search IN Msg in archive</strong> and <strong>Dont Search for a Response in Archive</strong> fields to secure communications. See the description of spooler settings.</li>
</ul>
<p>The spooler target tasks appear on the Spooler task form on the Task - Target Systems button. Applies only to OUT jobs.</p>
<p>Here it is filled in with whom I communicate (field ID of the target system) and with what parameter (field Interaction parameter).</p>
<p>According to the selected type of communication, they set the parameters:</p>
<ul>
<li>TCP – IP address [comma] port [comma] Timeout</li>
<li>MSMQ – Name MSMQ</li>
<li>Pipe – Name named PIPE</li>
<li>Disk – path [comma] extension</li>
<li>HTTP – address http</li>
<li>E-mail – email address</li>
</ul>
<p>For the E-mail communication type, the e-mail applies: When inserting a task into the OUT Buffer, it is possible to reconfigure (override) the communication parameter for a specific task in the OUT Buffer. It is also possible to fill in the table T4002916 OUT Buffer Document to send multiple attachment files in one e-mail from one OUT Buffer entry.</p>
<p>On the Spooler Tasks form, you can use the Function button to export, import, view, or delete XDR and XSL templates for individual tasks.</p>
<ol start="3">
<li>After filling in the fields, the page can be closed.</li>
</ol>
<h2 id="see-also">See also</h2>
<p><a href="spooler.html">Spooler</a>
<a href="productivity-pack.html">Productivity Pack</a><br>
<a href="../index.html">ARICOMA Solutions</a></p>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/ARICOMA-D365BC/AC-IB-dynamics365smb-docs/blob/master/business-central/ProductivityPack/spooler-setup.md/#L1" class="contribution-link">Improve this document</a>
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