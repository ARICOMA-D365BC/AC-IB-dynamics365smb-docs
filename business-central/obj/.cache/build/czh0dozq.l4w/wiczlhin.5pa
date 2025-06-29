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
<h1 id="setup---multiple-payment-methods">Setup - Multiple payment methods</h1>

<blockquote>
<p>Update 01.04.2022</p>
</blockquote>
<p>Before you can use the functionality of multiple payment methods in your business processes, you must make the basic module settings. These are code lists:</p>
<ul>
<li>Payment Methods</li>
<li>Payment places</li>
<li>User setup</li>
</ul>
<h2 id="payment-methods-settings">Payment Methods settings</h2>
<p>In the Payment methods list, create codes that represent the payment methods you use (e.g., cash, card, meal vouchers,... according to valid legislation and according to the expected scope of use in the company) so that it is possible to subsequently define the payment by the customer in the required structure.</p>
<p>If there are several counters or branches in the company, it is customary to record operations in these places separately. In this case, it is necessary to define the appropriate number of counter-accounts for each method of payment. The counter-account can be a financial account or a bank account, but the cash register card is most often used.</p>
<p>In addition, the  <em>Cash Desk Operation Type</em> needs to be defined for other control mechanisms of the functionality. There must always be a line with the  „Cash“, type, which the system uses when the cash amount received is entered to create the payment schedule line.</p>
<p>When manually creating Payment Schedule rows, the Payment Method Code is filtered by the Payment Location Code assigned to the user (see below).</p>
<p><img src="media/multiple_payment_methonds_overview.png" alt="Payment Methods"></p>
<h2 id="settings-up-payment-places">Settings up Payment Places</h2>
<p>If a company defines payment methods with multiple cash registers, it can be advantageous for the company to name the individual physical cash points and define the users that work on them.</p>
<p>In the Payment places list, define all the locations where customers can pay their obligations to your business.</p>
<p>In the User Settings list, assign the appropriate payment places code to the selected users serving customers. This assignment will help to guide user behavior to prevent errors due to inattention. See Assigning payment methods to users. <strong>See: Assign payment methods to users.</strong></p>
<p>By assigning a Payment Location Code to a payment method, you achieve greater control over users so that payment cannot be made by mistake against a balance account that is not assigned to the user.</p>
<h2 id="setting-up-multiple-payment-methods">Setting up Multiple Payment Methods</h2>
<p>Description of individual parameters:</p>
<ul>
<li><strong>Enable Multiple Cash Operation Types</strong> – allows you to define multiple payment methods with the same cash transaction type and for the same payment location.  It is necessary if you want to allow, for example, to accept foreign currency at POS.</li>
<li><strong>Check Payment Method On Sales Documents</strong> – this can be used to set the system to check if the corresponding Payment Method is used (i.e. with the same Payment Point assigned as the one set by the user who initiated the Issue action). If everything is set correctly, the system will change the Payment Method on the document, otherwise the system will display an error message.</li>
<li><strong>Check Payment Method On Purchase Documents</strong> dtto, but for purchase documents.</li>
<li><strong>Allow EET Register</strong> – enables checking that only rows in the Payment Schedule can be used that have the EET Cash Register Code column set.</li>
<li><strong>Check Fiscal Printer</strong> – this setting enables the enforcement of the use of the integration functionality with the so-called Fiscal Printers, their use is mandatory in the legislative environment of the Slovak Republic (see <a href="https://www.aricoma.com/docs/en-us/dynamics365/business-central/FinancialPack/fiscal-printers.html">Fiscal Printers</a>).</li>
</ul>
<p>On the Numbering tab, you can set the number series for payment documents. . This will only be used if you use a payment method with a counter-account other than Cashier (cashiers have their own number series, see <a href="https://learn.microsoft.com/en-us/dynamics365/business-central/localfunctionality/czech/ui-extensions-cash-desk-localization-cz#setting-up-no-series-for-receipts-and-withdrawals">Cash Desk Localization for Czech</a>).</p>
<h2 id="assigning-payment-methods-to-users">Assigning payment methods to users</h2>
<p>In order to better control the handling of cash or valuables, separate records are usually required for each user. To reduce error rate, each user can be assigned his own Payment Place Code.</p>
<ol>
<li>Choose the <img src="media/ui-search/search_small.png" alt="Lightbulb that opens the Tell Me feature." title="Tell me what you want to do"> icon, enter <strong>User Setup</strong> and then choose the related link.</li>
<li>On the User Settings page, select the desired value in the Payment Point Code column.</li>
</ol>
<h2 id="see-also">See also</h2>
<p><a href="multiple-payment-methods.html">Multiple payment methods</a><br>
<a href="finance-pack.html">Financial Pack</a></p>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/ARICOMA-D365BC/AC-IB-dynamics365smb-docs/blob/master/business-central/FinancialPack/multiple-payment-methods-setup.md/#L1" class="contribution-link">Improve this document</a>
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