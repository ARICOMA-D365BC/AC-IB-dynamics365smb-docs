<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>GP Tom Integration </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="GP Tom Integration ">
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
<h1 id="setup-gp-tom-integration">Setup GP tom integration</h1>

<blockquote>
<p>Update 14.10.2024</p>
</blockquote>
<h2 id="setup">Setup</h2>
<h3 id="modul-activation">Modul activation</h3>
<p>The first step (in the production database) is to check if the company has activated the module subscription (see <a href="https://www.aricoma.com/docs/en-us/dynamics365/business-central/ProductivityPack/monetization.html">Aricoma monetization help</a>).
In the next steps, the user is guided through the registration of the first payment terminal.</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Payment Terminals Setup</strong> and then select the related link.</li>
<li>On the <strong>Payment Terminals Setup</strong> page, run the Set API Endpoint action.</li>
<li>Enter the API key obtained by activating it in the terminal.</li>
</ol>
<h3 id="terminal-settings">Terminal settings</h3>
<p>Each physical device must be registered in the Payment Terminals table. The description of the settings below corresponds to the most common configuration, which is the recording of card payments.</p>
<div class="NOTE">
<h5>Note</h5>
<p>The GP Tom application also allows the registration of cash or cryptocurrency payments, These options are supported, however no other settings are described in BC where the registration of such operations would make sense.</p>
</div>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Payment Terminals</strong> and then select the related link.</li>
<li>On the <strong>Payment Terminals</strong> page, click New to create a new payment terminal.</li>
<li>Enter the <em>Terminal Code</em> and <em>Description</em>.</li>
<li>In the <em>Terminal ID</em> field, enter the number assigned to the terminal.</li>
<li>In the <em>GP tom Merchant Username</em> field, enter the name (e-mail) of the terminal user.</li>
<li>In the <em>GP tom Merchant Password</em> field, enter the password of the terminal user.</li>
<li>In the <em>GP tom Transaction Timeout (s)</em> field, leave the default value unless you have a specific request to reduce or extend the time that BC does not finish waiting for a response from the terminal.</li>
<li>In the Preferable <em>Payment Type</em> field, select Card.</li>
<li>In the Preferable <em>Receipt Type</em> field, select if the receipt should be printed from the terminal or sent via email or mobile phone.</li>
<li>In the <em>Payment Document Nos.</em> field, select a number series to designate the payment records in BC.</li>
<li>Run the <em>Acquire Access Token</em> action to verify that the login information entered is correct.</li>
</ol>
<h3 id="calling-a-payment-registration-from-elsewhere">Calling a payment registration from elsewhere</h3>
<p>The connection can be made in 2 ways in general:</p>
<ul>
<li>By running the &quot;PT Register Payment_acc&quot; page using the RegisterPaymentDialog functions in the &quot;PaymentTerminalsInterface_acc&quot; CU (see below).</li>
<li>By a custom interface, or completely without UI, using the RegisterPayment function in the CU &quot;PaymentTerminalsInterface_acc&quot;.</li>
</ul>
<p>The following description of the CU PaymentTerminalsInterface_acc shows all available functions:</p>
<p>codeunit 72056620 &quot;PaymentTerminalsInterface_acc&quot;</p>
<pre><code class="lang-al">/// &lt;summary&gt;
/// Function for running the batch closing on the payment terminal with GUI (Confirmation dialog).
/// &lt;/summary&gt;
/// &lt;param name=&quot;PaymentTerminal&quot;&gt;Record of the &quot;Payment Terminal_acc&quot; table where batch closing will be performed.&lt;/param&gt;
procedure TerminalBatchYesNo(PaymentTerminal: Record &quot;Payment Terminal_acc&quot;)

/// &lt;summary&gt;
/// Function for running the batch closing on the payment terminal without GUI (no confirmation dialog).
/// &lt;/summary&gt;
/// &lt;param name=&quot;PaymentTerminal&quot;&gt;Record of the &quot;Payment Terminal_acc&quot; table where batch closing will be performed.&lt;/param&gt;
/// &lt;param name=&quot;ShowDialog&quot;&gt;Indicates whether a progress dialog and messages are displayed when the operation is performed.&lt;/param&gt;
procedure TerminalBatch(PaymentTerminal: Record &quot;Payment Terminal_acc&quot;; ShowDialog: Boolean)

/// &lt;summary&gt;
/// Function for running a page that enables user to register payments on the payment terminal.
/// &lt;/summary&gt;
/// &lt;param name=&quot;PaymentTerminal&quot;&gt;Record of the &quot;Payment Terminal_acc&quot; table where transaction will be registered.&lt;/param&gt;
procedure RegisterPaymentDialog(PaymentTerminal: Record &quot;Payment Terminal_acc&quot;)

/// &lt;summary&gt;
/// Function for running a page that enables user to register a transaction on the payment terminal with predefined values.
/// &lt;/summary&gt;
/// &lt;param name=&quot;InitialPaymentTerminalTransaction&quot;&gt;Record of the &quot;PaymentTerminalTransaction_acc&quot; table with the initial values of the transaction (e.g. amount, document number, payment method, etc.).&lt;/param&gt;
procedure RegisterPaymentDialog(InitialPaymentTerminalTransaction: Record PaymentTerminalTransaction_acc)

/// &lt;summary&gt;
/// Function for registering a transaction on the payment terminal based on defined parameters directly without dialog page.
/// &lt;/summary&gt;
/// &lt;param name=&quot;PaymentTerminalCode&quot;&gt;A unique code of the payment terminal&lt;/param&gt;
/// &lt;param name=&quot;PaymentType&quot;&gt;Type of the payment (Cash, Card etc.).&lt;/param&gt;
/// &lt;param name=&quot;DocumentNo&quot;&gt;Number of the documet to which a payment is registered.&lt;/param&gt;
/// &lt;param name=&quot;PostingDate&quot;&gt;Posting date of the documet to which a payment is registered.&lt;/param&gt;
/// &lt;param name=&quot;CurrencyCode&quot;&gt;Currency code of the payment.&lt;/param&gt;
/// &lt;param name=&quot;Amount&quot;&gt;Amount of the payment.&lt;/param&gt;
/// &lt;param name=&quot;ShowDialog&quot;&gt;Indicates whether a progress dialog and messages are displayed when the operation is performed.&lt;/param&gt;
procedure RegisterPayment(PaymentTerminalCode: Code[20]; PaymentType: Enum &quot;PT Payment Type_acc&quot;; DocumentNo: Code[20]; PostingDate: Date; CurrencyCode: Code[10]; Amount: Decimal; ShowDialog: Boolean)

/// &lt;summary&gt;
/// Function for cancelling the transaction on the payment terminal with GUI (Confirmation dialog).
/// &lt;/summary&gt;
/// &lt;param name=&quot;PaymentTerminalTransaction&quot;&gt;Record of the &quot;PaymentTerminalTransaction_acc&quot; table of the transaction that will be cancelled.&lt;/param&gt;
procedure CancelTransactionYesNo(var PaymentTerminalTransaction: Record PaymentTerminalTransaction_acc)
begin
    PaymentTerminalsMgt.CancelTransactionYesNo(PaymentTerminalTransaction);
end;
/// &lt;summary&gt;
/// Function for cancelling the transaction on the payment terminal without GUI (No confirmation dialog).
/// &lt;/summary&gt;
/// &lt;param name=&quot;PaymentTerminalTransaction&quot;&gt;Record of the &quot;PaymentTerminalTransaction_acc&quot; table of the transaction that will be cancelled.&lt;/param&gt;
/// &lt;param name=&quot;ShowDialog&quot;&gt;Indicates whether a progress dialog and messages are displayed when the operation is performed.&lt;/param&gt;
procedure CancelTransaction(var PaymentTerminalTransaction: Record PaymentTerminalTransaction_acc; ShowDialog: Boolean)
</code></pre>
<h2 id="see-also">See also</h2>
<p><a href="gptom-integration.html">GP tom integration</a><br>
<a href="streamlinetools.html">Streamline Tools</a><br>
<a href="../index.html">ARICOMA Solution</a></p>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/ARICOMA-D365BC/AC-IB-dynamics365smb-docs/blob/master/business-central/StreamlineTools/gptom-integration-setup.md/#L1" class="contribution-link">Improve this document</a>
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