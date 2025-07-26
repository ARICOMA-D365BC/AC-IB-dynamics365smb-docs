<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>AC - Financial pack -  Multiple payments | Microsoft Docs </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="AC - Financial pack -  Multiple payments | Microsoft Docs ">
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
<h1 id="multiple-payment-methods" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="14">Multiple payment methods</h1>

<blockquote sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="15">
<p sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="15">Update 01.04.2022</p>
</blockquote>
<p sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="17"><strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="17">The Multiple Payment Methods</strong> module extends the standard of sales documents in the area of balancing the document directly during posting.
On sales invoice or sales credit note documents, instead of one payment method, it is now possible to define multiple payment methods, typically partly by credit card and partly in cash.</p>
<p sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="20">The functionality extends the possibilities of setting rules to users even if one payment method is used, both on sales and purchase documents. The aim is to reduce user errors by assigning users to specific &quot;payment places&quot;.
In practice, however, it happens that a customer wants to pay on the spot in cash a receipt that should have been paid by bank transfer. Then it is also possible to use the functionality of the module and define the combination of payment on the posted invoice (credit memo) or on the issued advance.
It is possible to use all three counter-account options included in the localization (Financial Account, Bank Account, Cashier) to record the settlement counter-account. However, the most common is the use of <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="22">the Cashier as a counter-account</strong>, which allows combining the use of Multiple Payment Methods and Cash Receipts and brings with it rounding advantages (it is automatically resolved only on the cash receipt).</p>
<div class="WARNING" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="24">
<h5>Warning</h5>
<p sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="25">The module forms the basis for supporting retail sales in the form of Cash&amp;Carry. The functionality is not available on purchase orders (generally on sales/purchase documents where partial invoicing is possible). If you add it to these documents, then you must treat potentially conflicting states programmatically or methodically.
The option to define multiple payment methods is not available by default on any purchase document, but can be added there as part of the customer extension functionality.</p>
</div>
<h2 id="posting-a-sales-invoice-with-multiple-payment-methods" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="29">Posting a sales invoice with multiple payment methods</h2>
<ol sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="31">
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="31">Choose the <img src="media/ui-search/search_small.png" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="31" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="31">Sales Invoices</strong> and then choose the related link.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="32">Create a new sales invoice according to your conventions.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="33">On the <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="33">Sales Invoice</strong> page, choose <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="33">Issue</strong> and then run <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="33">Payment Schedule</strong> function.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="34">Enter the amount of cash you received from the customer.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="35">In the next step, enter other methods of payment and the amount paid in that way in the lines.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="36">In the Return Cash Amt. (LCY) field, determine the amount that you should return to the customer.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="37">Choose <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="37">Close</strong> to close the page.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="38">On the Sales Invoice page, run the Post function.</li>
</ol>
<div class="NOTE" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="40">
<h5>Note</h5>
<p sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="41">If you do not enter a cash amount, you must enter amounts in the rows exactly up to the amount of the receipt (i.e., so that the Balance field is zero).</p>
</div>
<p sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="43"><img src="media/multiple_payment_methods_payment.png" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="43" alt="Payment Schedule"></p>
<h2 id="additional-payment-of-the-posted-sales-invoice" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="45">Additional payment of the posted sales invoice</h2>
<ol sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="46">
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="46">Choose the <img src="media/ui-search/search_small.png" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="46" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="46">Posted Sales Invoices</strong> and then choose the related link.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="47">Find the relevant document and open its card.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="48">On the Posted Sales Invoice page, choose the <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="48">Payment Schedule</strong> function.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="49">Enter the amount of cash you received from the customer.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="50">In the next step, enter other methods of payment and the amount paid in that way in the lines.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="51">In the Return Cash Amt. (LCY) field, determine the amount that you should return to the customer.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="52">On the Payment Schedule page, run the Post function to post one or more balancing items (typically cash receipts).</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="53">Choose <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="53">Close</strong> to close the page.</li>
</ol>
<div class="NOTE" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="55">
<h5>Note</h5>
<p sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="56">A similar procedure can be used on the Posted Sales Credit Memo page.
If the receipt is unrounded, rounding of the cash to be refunded takes place only when posting the settlement through the rounding set in the Cash Receipts functionality.</p>
</div>
<h2 id="records-of-payment--simplified-regime" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="59">Records of payment – simplified regime</h2>
<p sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="61">In case the customer wants to settle the document when charging by one method only, e.g. by bank card, the simplified mode can be used by entering the selected Payment Method Code directly in the document header.</p>
<ol sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="63">
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="63">Choose the <img src="media/ui-search/search_small.png" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="63" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="63">Sales Invoices</strong> and then choose the related link.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="64">Find the relevant document and open its card.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="65">On the Sales Invoice page, select the appropriate value in the <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="65">Payment Method Code</strong> field.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="66">On the Sales Invoice page, run the Post function.</li>
</ol>
<div class="NOTE" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="68">
<h5>Note</h5>
<p sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="69">A similar procedure can be used on the Posted Sales Credit Memo page.</p>
</div>
<h2 id="records-of-payment--simplified-mode-with-substitution-of-payment-method" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="71">Records of payment – simplified mode with substitution of payment method</h2>
<p sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="73">It is a relatively common practice that the preferred or allowed payment method (typically cash payment) is defined on customer cards. However, when there are more than one such code (due to record keeping requirements), it is necessary to ensure that the document is posted with the code appropriate to the user posting the document. If &quot;Check payment method on sales document&quot; is enabled, the system will make the change automatically (see <a href="https://www.aricoma.com/docs/en-us/dynamics365/business-central/FinancialPack/multiple-payment-methods-setup.html#payment-methods-settings" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="73">Setting up Payment Methods</a>).</p>
<ol sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="76">
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="76">Choose the <img src="media/ui-search/search_small.png" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="76" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="76">Multiple Payment Methods Setup</strong> and then choose the related link.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="77">Verify that check <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="77">Check Payment Method On Sales Documents</strong> is turned on.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="78">Choose the <img src="media/ui-search/search_small.png" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="78" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="78">User Setup</strong> and then choose the related link.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="79">Verify that <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="79">Payment Place Code</strong> is set on the logged-in user login.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="80">Choose the <img src="media/ui-search/search_small.png" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="80" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="80">Customers</strong> and then choose the related link.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="81">Find the relevant customer and open their card.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="82">In the <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="82">Payment Method Code</strong> field, set the method that has the value Cash set in the Cashier Operation Type column, but that does not have a <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="82">Payment Location Code</strong> defined (see &quot;Cash&quot; as shown in the <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="82">Payment Method Settings</strong>)</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="83">Choose the <img src="media/ui-search/search_small.png" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="83" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="83">Sales Invoices</strong> and then choose the related link.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="84">Run the New action to create a new document.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="85">On the Sales Invoice page, enter the customer (see above)</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="86">Enter at least one invoice line.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="87">On the Sales invoice page, start the issue function.</li>
</ol>
<h2 id="eet-records-directly-from-the-payment-schedule" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="90">EET records directly from the Payment Schedule</h2>
<p sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="92">In some cases, it is required to create a register of EET (legislation in the Czech Republic) already on the payment schedule, i.e. before the document is posted (e.g. for printing documents for the implementation of cash on delivery, etc.).</p>
<p sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="94">If Enable EET registration is enabled, the Register EET action is available on the payment schedule, resp. Cancel EET (see <a href="https://www.aricoma.com/docs/en-us/dynamics365/business-central/FinancialPack/multiple-payment-methods-setup.html#payment-methods-settings" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="94">Payment Methods Settings</a>).</p>
<ol sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="96">
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="96">Choose the <img src="media/ui-search/search_small.png" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="96" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="96">Multiple Payment Methods Setup</strong> and then choose the related link.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="97">Verify that the Enable EET registration option is enabled.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="98">Create a new sales invoice according to your conventions.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="99">On the Sales Invoice page, run the issue action and then run the Payment Schedule function.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="100">Enter the amount of cash you received from the customer.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="101">In the next step, enter other methods of payment and the amount paid in that way in the lines.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="102">Start the Register EET action.</li>
<li sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="103">Choose <strong sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="103">Close</strong> to close the page.</li>
</ol>
<h2 id="see-also" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="106">See also</h2>
<p sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="108"><a href="multiple-payment-methods-setup.html" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="108">Multiple payment methods - Setup</a><br>
<a href="finance-pack.html" sourcefile="FinancialPack/multiple-payment-methods.md" sourcestartlinenumber="109">Financial Pack</a></p>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/ARICOMA-D365BC/AC-IB-dynamics365smb-docs/blob/master/business-central/FinancialPack/multiple-payment-methods.md/#L1" class="contribution-link">Improve this document</a>
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