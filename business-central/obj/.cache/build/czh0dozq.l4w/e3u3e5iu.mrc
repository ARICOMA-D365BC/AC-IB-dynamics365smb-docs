<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Complaints | Microsoft Docs </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Complaints | Microsoft Docs ">
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
<h1 id="complaints-management" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="13">Complaints Management</h1>

<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="14">Modul <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="14">Reklamace</strong> slouží k evidenci reklamací zboží prodaného i nakoupeného. Umožňuje však také evidovat i reklamace interní. Lze sledovat proces reklamace od založení reklamace, evidenci jednotlivých stavů reklamace, vytváření řádků vyřízení a poskytuje také základní tisky k reklamaci a vyřízení reklamace. Modul je provázán na více úrovních se sledováním pomocí modulu Řízení stavů (workflow).</p>
<h2 id="vytvoření-nové-reklamace" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="16">Vytvoření nové Reklamace</h2>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="17">Po provedení potřebných nastavení lze vytvářet doklady <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="17">Reklamace</strong>. Documents can be created manually by:</p>
<ol sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="19">
<li sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="19">Vyberte ikonu <img src="media/ui-search/search_small.png" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="19" alt="Žárovky, která otevře funkci Řekněte mi" title="Řekněte mi, co chcete dělat">, zadejte <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="19">Přehled reklamací</strong> a poté vyberte související odkaz.</li>
<li sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="20">Na stránce <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="20">Přehled reklamací</strong> vyberte ikonu <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="20">Nový</strong>.</li>
<li sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="21">Vytvořte nový doklad Reklamace.</li>
</ol>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="23"><img src="media/complaints-document.png" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="23" alt="Název"></p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="25"><strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="25">Reklamace</strong> zobrazuje relevantní informace vztahující se k danému dokladu. Je třeba zvolit o jaký <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="25">Typ</strong> reklamace se jedná – Nákup, Prodej, Interní. Pole <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="25">Číslo</strong> se vyplní automaticky dalším číslem z číselné řady. <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="25">Číslo původu</strong> (číslo dodavatele, zákazníka, zaměstnance) je specifikováno dle vybraného Typy dokladu.
Všechny údaje v bílých polích lze editovat (je tedy možné vyplnit či změnit pole <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="26">Číslo kontaktu</strong>, <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="26">Kontakt, Požadované datum ukončení, Telefon, E-mail,…</strong>
V záložce <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="27">Detail změny stavu</strong> se po založení objeví nový záznam s výchozím stavem podle definice v šabloně řízení stavů.</p>
<h3 id="řádky-reklamace" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="28">Řádky reklamace</h3>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="30">Přes řádky reklamace uživatel propojuje doklad reklamace s původními doklady. Nejprve je třeba do řádku zadat <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="30">Kód důvodu reklamace</strong>, který specifikuje důvod reklamace pro daný řádek.
Pole <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="31">Číslo původního dokladu</strong> (Účtované řádky nákupní příjemky, Řádky účtované příjemky vratky) lze propojit pro jednotlivý <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="31">Typ</strong> = Nákup, Prodej. V případě, že se jedná o <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="31">Typ</strong> = Interní, pak je třeba vybrat <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="31">Číslo položky zboží</strong>, ke které se reklamace vztahuje. V případě, že pole <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="31">Typ původního dokladu</strong> = Transfer lze původní doklad propojit přes pole Číslo původního dokladu (Řádky účtované dodávky transferu).
Z propojeného původního dokladu se předvyplní základní data – <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="32">Číslo zboží, Popis, Kód měrné jednotky, Reklamované množství, Číslo šarže,…</strong>, které uživatel může změnit či upravit.</p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="34"><img src="media/complaints-complaint_list.png" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="34" alt="Název"></p>
<h3 id="poznámky-k-reklamaci" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="35">Poznámky k reklamaci</h3>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="37">Uživatelé mohou zadat řádkové poznámky dostupné jako funkce <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="37">Související/Reklamace/Poznámky</strong>. These are Request Comment Line on the request card—these structured notes contain the Date, Note (100 characters), and Code fields.</p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="39"><img src="media/complaints-notes.png" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="39" alt="Název"></p>
<h3 id="documents" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="40">Documents</h3>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="42">Pokud je instalován modul <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="42">Publikování SharePoint</strong>, pak je možné u každé <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="42">Reklamace</strong> pomocí funkce <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="42">Související/Dokumenty/Publikovat</strong> publikovat dokument a pomocí funkce <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="42">Zobrazit</strong> zobrazit publikovaný dokument <em sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="42">(detailněji viz. modul – SharePoint)</em>.</p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="44"><img src="media/complaints-documents.png" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="44" alt="Název"></p>
<h3 id="printing" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="45">Printing</h3>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="47">Pomocí funkce <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="47">Akce/Tisk/Reklamace</strong> a <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="47">Akce/Tisk/Vyřízení reklamace</strong> se spustí dvě základní sestavy pro zpracování reklamace a vyřízení reklamace (do vstupního filtru se nabídne číslo aktuálně zobrazeného požadavku, rozsah tisku lze pak blíže specifikovat prostřednictvím filtrů a parametrů.</p>
<h2 id="zpracování-reklamace" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="49">Zpracování reklamace</h2>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="51">Po vytvoření Reklamace je možno ji dále zpracovávat a procesovat a následně ji pak přepnout např. do nového <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="51">Stavu</strong> = V řešení.</p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="53">Na řádku reklamace lze vyplnit pole <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="53">Kód příčiny reklamace</strong> (výběr z číselníku <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="53">Příčiny reklamace</strong>), <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="53">Zapříčinil – Středisko</strong> (výběr z číselníku <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="53">Hodnot dimenzí – STŘEDISKO</strong>), <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="53">Zapříčinil – Zaměstnanec</strong> (výběr z číselníku <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="53">Zaměstnanci</strong>). Přes akci <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="53">Řádek/Změna stavu</strong> lze jednotlivý řádek reklamace procesně přesunout do dalšího definovaného stavu workflow a přes akci <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="53">Akce/Funkce/Změna stavu</strong> změnit stav celého dokladu reklamace.</p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="55">Sledování a řízení postupu reklamace tedy může být podpořeno přepínáním stavů workflow se všemi jeho možnostmi, jako např. informování uživatelů mailem, automatické nastavování polí či řízení přístupu vybraným uživatelům k jednotlivým stavům workflow (<em sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="55">detailněji viz. Řízení stavů</em>).</p>
<h3 id="vytvořit-řádek-vyřízení" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="57">Vytvořit řádek vyřízení</h3>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="59">Lze využít funkce <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="59">Vytvořit řádek vyřízení</strong>. Uživateli se zobrazí dotaz na <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="59">Množství k vyřízení a kód způsobu vyřízení</strong>.</p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="61"><img src="media/complaints-line_pending.png" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="61" alt="Název"></p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="63">Lze tedy k jednomu řádku reklamace vytvořit více řádků vyřízení, a to vždy se specifickým kódem vyřízení. Vytvořené řádky vyřízení se z reklamace otevřou přes akci <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="63">Řádek/Řádky vyřízení reklamace</strong>.</p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="65">Dále je možno <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="65">Řádek vyřízení reklamace</strong> procesovat a měnit jeho stav přes akci – <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="65">Akce/Funkce/Změna stavu</strong>, případně změnit <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="65">Kód způsobu vyřízení</strong>.</p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="67"><img src="media/complaints-line.png" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="67" alt="Název"></p>
<h3 id="prodejní-položky-zboží" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="69">Prodejní položky zboží</h3>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="71">Pomocí funkce <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="71">Řádek/Prodejní položky zboží</strong> se zobrazí zafiltrovaný přehled položek zboží <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="71">Typu</strong> = Prodej za daného <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="71">Zákazníka, Číslo šarže, Číslo zboží, Kód varianty</strong>.</p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="73"><img src="media/complaints-filtered.png" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="73" alt="Název"></p>
<h3 id="vytvořit-nákupní-reklamaci" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="75">Vytvořit nákupní reklamaci</h3>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="77">Pomocí funkce <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="77">Vytvořit nákupní reklamaci</strong> lze z Prodejní reklamace vytvořit reklamaci Nákupní. Funkce vytvoří novou Reklamaci k zadanému číslu dodavatele a překopíruje také řádek se všemi vyplněnými údaji.</p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="79"><img src="media/complaints-creation.png" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="79" alt="Název"></p>
<h3 id="historie-původního-dokladu" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="81">Historie původního dokladu</h3>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="83">Pomocí funkce <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="83">Řádek/Historie původního dokladu</strong> se zobrazí přehled všech změn k vybranému řádku reklamace. Jedná se o změny propojení řádku reklamace na původní doklad včetně informací o datu a času změny záznamu a uživateli, který změnu provedl.</p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="85"><img src="media/complaints-history.png" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="85" alt="Název"></p>
<h2 id="dispečer-řádků-reklamace" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="87">Dispečer řádků reklamace</h2>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="89">Dispečer řádků reklamace je dostupný:</p>
<ul sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="91">
<li sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="91">Vyberte ikonu <img src="media/ui-search/search_small.png" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="91" alt="Žárovky, která otevře funkci Řekněte mi" title="Řekněte mi, co chcete dělat">, zadejte <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="91">Dispečer řádků reklamace</strong> a poté vyberte související odkaz.</li>
</ul>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="93">Tato stránka umožňuje souhrnný pohled na všechny reklamace. Nabízí přehledové zobrazení reklamací s přednastavenými volitelnými filtry v záhlaví pro snadnější vyhledávání a orientaci. Reklamace lze filtrovat např. podle <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="93">Lokace hlavičky</strong>, <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="93">Příčiny reklamace</strong>, <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="93">Datumu vytvoření</strong>, podle <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="93">Uživatele, který reklamaci Vytvořil</strong> či podle <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="93">stavu Řízení stavů</strong>. Zobrazený přehled požadavků je možno navíc seřadit podle různých klíčů, zvl. podle Čísla reklamace, Čísla zboží, Popisu, Kódu příčiny reklamace a Zapříčinili – Středisko nebo Zaměstnanec.</p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="95">Na řádku reklamace lze vyplnit pole <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="95">Kód příčiny reklamace</strong> (výběr z číselníku <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="95">Příčiny reklamace</strong>), <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="95">Zapříčinil – Středisko</strong> (výběr z číselníku <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="95">Hodnot dimenzí – STŘEDISKO</strong>), <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="95">Zapříčinil – Zaměstnanec</strong> (výběr z číselníku <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="95">Zaměstnanci</strong>).</p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="97">Vybraný řádek reklamace lze pak zobrazit akcí <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="97">Souvisejíci/Řádek/Doklad</strong>. Dále je zde funkce <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="97">Akce/Funkce/Změna stavu</strong> pro změnu stavu workflow daného řádku reklamace.</p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="99"><img src="media/complaints-line_dispatcher.png" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="99" alt="Název"></p>
<h2 id="uzavření-reklamace" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="101">Uzavření reklamace</h2>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="103">Pomocí akce <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="103">Akce/Funkce/Uzavřít reklamaci</strong> se celá Reklamace přepne do <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="103">Stav</strong> = Uzavřeno a automaticky se vyplní pole <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="103">Uzavřeno dne a Uzavřel</strong>.</p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="105">Jedná se o stav, ve kterém jsou již všechny pole a akce nepřístupné tzn. nelze na Reklamaci již nic změnit či upravit.</p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="107">[!NOTE]
Z tohoto stavu se již nelze vrátit do předchozího <strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="108">Stavu</strong> – V řešení nebo Nový.</p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="110"><img src="media/complaints-closing.png" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="110" alt="Název"></p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="112"><strong sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="112">See also</strong></p>
<p sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="114"><a href="complaints-management-setup.html" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="114">Reklamace - nastavení</a><br>
<a href="productivity-pack.html" sourcefile="Solutions/complaints-management.md" sourcestartlinenumber="115">Productivity Pack</a></p>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/ARICOMA-D365BC/AC-IB-dynamics365smb-docs/blob/master/business-central/Solutions/complaints-management.md/#L1" class="contribution-link">Improve this document</a>
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