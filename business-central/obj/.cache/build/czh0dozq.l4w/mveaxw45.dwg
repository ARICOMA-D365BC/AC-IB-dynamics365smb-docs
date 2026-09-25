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
<h1 id="gp-tom-integration">GP tom integration</h1>

<blockquote>
<p>Update 14.10.2024</p>
</blockquote>
<p>The <strong>GP tom integration</strong> addon is designed primarily for seamless integration of Business Central with payment terminals to make them a native part of business processes. In addition, it also enables related service operations to be performed directly from the BC environment.</p>
<p>The module connects Microsoft Dynamics 365 Business Central with payment terminals, or with the solution <a href="https://www.gptom.com/"><strong>tom</strong></a> operated on the terminals.
Thanks to this solution, you can enable your customers to pay not only with Visa and Mastercard, but also with Apple Pay, Google Pay, Edenred... More <a href="https://www.gptom.com/en/docs/manual/zaciname/podporovana-karetni-schemata/">here</a>.</p>
<h2 id="usage">Usage</h2>
<p>The following text describes the use of the terminal for the most common case, i.e. payment by credit card.</p>
<h3 id="payment-registration-on-a-terminal-according-to-the-default-settings">Payment registration on a terminal according to the default settings</h3>
<p>In this case, this is the standard BC functionality where the user uses the Post and Send function for posting. Each customer has a document posting profile set on his/her card, or the profile marked as default is used.</p>
<ol>
<li><p>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Payment Terminals</strong> and then choose the related link.</p>
</li>
<li><p>On the <strong>Payment Terminals</strong> page, select the terminal where you want to make the payment.</p>
</li>
<li><p>Run the <em>Register Payments</em> action.</p>
</li>
<li><p>On the <strong>Register Payment</strong> page, in the Amount field, enter a value for the terminal payment.</p>
</li>
<li><p>Run the <em>Pay</em> action.</p>
</li>
<li><p>The &quot;Attach Card&quot; dialog will appear on the terminal.</p>
<img src="media/GPtom_toPay.webp" alt="Attach Card" width="50%" height="50%">
</li>
<li><p>After successful payment, a dialog will appear where the operator will send the receipt of payment (or he can also Finish the process)</p>
<img src="media/GPtom_succPayment.webp" alt="Successful payment" width="50%" height="50%">
</li>
<li><p>In the dialog for sending the receipt, the sending method set for the respective terminal is pre-filled</p>
<img src="media/GPtom_printReceipt.webp" alt="Sending receipt" width="50%" height="50%">
</li>
<li><p>After the payment process is completed on the terminal, a notification with the result of the operation will appear on the Register Payment page, including the Open Entry option to display an entry with details of the ongoing communication with the terminal.</p>
</li>
</ol>
<div class="TIP">
<h5>Tip</h5>
<p>When using the Pay and Close action in step 5, the <strong>Register Payment</strong> page will close after the transaction.</p>
</div>
<h3 id="payment-registration-on-a-terminal-with-specific-settings">Payment registration on a terminal with specific settings</h3>
<p>By specific settings we mean in particular the processing of tips and a different transaction currency than the default one.</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Payment Terminals</strong> and then select the related link.</li>
<li>On the <strong>Payment Terminals</strong> page, select the terminal where you want to make the payment.</li>
<li>Run the <em>Register Payments</em> action.</li>
<li>On the <strong>Register Payment</strong> page, in the Amount field, enter a value for the terminal payment.</li>
<li>On the Payment tab, click <em>Show more</em>.</li>
<li>Enable the <em>Collect Tip</em> flag if the terminal should prompt the user to enter a tip. Then, in the <em>Tip Amount</em> field, enter the amount to appear on the terminal.</li>
<li>In the <em>Currency</em> field, enter the currency in which the payment is to be made.</li>
<li>In the <em>Reference No.</em> field, you can change the transaction designation used for traceability between the BC and GP Tom records.</li>
<li>On the Options tab, in the <em>Receipt Type</em> field, select Email or Phone; you must then enter an email address or phone number in the <em>Receipt Send To</em> field.</li>
<li>Run the <em>Pay</em> action.</li>
<li>The &quot;Attach Card&quot; dialog will appear on the terminal and proceed as described from step 6 onwards in the previous chapter.</li>
</ol>
<h3 id="cancelation-of-payment">Cancelation of payment</h3>
<p>This operation can be done directly from the BC, but of course also <a href="https://www.gptom.com/en/docs/manual/zakladni-funkce/storno-platby/">on the terminal</a> (cancellation conditions are determined by the GP tom terms and conditions depending on the specific market).</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Payment Terminal Transactions</strong> and then select the related link.</li>
<li>On the <strong>Payment Terminal Transactions</strong> page, select the record you want to cancel.</li>
<li>Run the <em>Cancel Transaction</em> action.</li>
<li>On the confirmation dialog, press <em>Yes</em>.</li>
<li>Verify that the transaction status has changed to Cancelled.</li>
</ol>
<h3 id="transaction-status-update">Transaction status update</h3>
<p>It may happen that the terminal processes a transaction longer than the set waiting time. Or that the transaction has been cancelled directly at the terminal. In such a case, the records in the BC need to be updated additionally to include the final status of the transaction.</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Payment Terminal Transactions</strong> and then select the related link.</li>
<li>On the <strong>Payment Terminal Transactions</strong> page, select the record which you want to update (with the value &quot;Created&quot; in the Transaction Status field).</li>
<li>Run the <em>Update Transaction Status</em>.</li>
<li>Verify that the transaction status has changed and additional information identifying the transaction has been added (e.g. transaction ID).</li>
</ol>
<h3 id="additional-sending-of-the-receipt">Additional sending of the receipt</h3>
<p>This option is only available on the terminal in the payment list.</p>
<h3 id="closure">Closure</h3>
<p>This administrative operation can be carried out directly from the BC, but of course also <a href="https://www.gptom.com/en/docs/manual/zakladni-funkce/uzaverka/">on the terminal</a>.</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>Payment Terminals</strong> and then select the related link.</li>
<li>On the <strong>Payment Terminals</strong> page, select the terminal where you want to make the closing.</li>
<li>Run the <em>Register Payments</em> action.</li>
<li>A list of closed batches opens in the terminal application.</li>
</ol>
<h2 id="see-also">See also</h2>
<p><a href="gptom-integration-setup.html">Setup - GP tom integration</a><br>
<a href="streamlinetools.html">Streamline Tools</a><br>
<a href="../index.html">ARICOMA Solution</a></p>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/ARICOMA-D365BC/AC-IB-dynamics365smb-docs/blob/master/business-central/StreamlineTools/gptom-integration.md/#L1" class="contribution-link">Improve this document</a>
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