


<!DOCTYPE html>
<html lang="en" class="">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    
    
    <title>Altis-Life/macro.h at master · TAWTonic/Altis-Life · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="TAWTonic/Altis-Life" name="twitter:title" /><meta content="Altis-Life - A place where I dump on-going development changes to Altis Life" name="twitter:description" /><meta content="https://avatars1.githubusercontent.com/u/4950691?v=3&amp;s=400" name="twitter:image:src" />
      <meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars1.githubusercontent.com/u/4950691?v=3&amp;s=400" property="og:image" /><meta content="TAWTonic/Altis-Life" property="og:title" /><meta content="https://github.com/TAWTonic/Altis-Life" property="og:url" /><meta content="Altis-Life - A place where I dump on-going development changes to Altis Life" property="og:description" />
      <meta name="browser-stats-url" content="/_stats">
    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035">
    
    <meta name="pjax-timeout" content="1000">
    

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="183EAC31:12AB:25864921:54F036CC" name="octolytics-dimension-request_id" />
    
    <meta content="Rails, view, blob#show" name="analytics-event" />

    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


    <meta content="authenticity_token" name="csrf-param" />
<meta content="IdwmhX7qdbEqWMOCHNcC9ln0jbIDwqKe+Q0KBGaDmGSFy62TH09erHzrktk+YLPeeBmHrKmwGsWWs0U7lqMDCg==" name="csrf-token" />

    <link href="https://assets-cdn.github.com/assets/github-84e4144e3c0347e1187b021a88b6bcbad5186ac898c63e26b13332c7c53504a6.css" media="all" rel="stylesheet" />
    <link href="https://assets-cdn.github.com/assets/github2-320555df871a1224442dd4ea0383c2a01f269a353d2ada703ea78f4500cdd2db.css" media="all" rel="stylesheet" />
    
    


    <meta http-equiv="x-pjax-version" content="3d692b4fefff32419c028036a62a53ff">

      
  <meta name="description" content="Altis-Life - A place where I dump on-going development changes to Altis Life">
  <meta name="go-import" content="github.com/TAWTonic/Altis-Life git https://github.com/TAWTonic/Altis-Life.git">

  <meta content="4950691" name="octolytics-dimension-user_id" /><meta content="TAWTonic" name="octolytics-dimension-user_login" /><meta content="12676479" name="octolytics-dimension-repository_id" /><meta content="TAWTonic/Altis-Life" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="12676479" name="octolytics-dimension-repository_network_root_id" /><meta content="TAWTonic/Altis-Life" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/TAWTonic/Altis-Life/commits/master.atom" rel="alternate" title="Recent Commits to Altis-Life:master" type="application/atom+xml">

  </head>


  <body class="logged_out  env-production windows vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      
      


      
      <div class="header header-logged-out" role="banner">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/" data-ga-click="(Logged out) Header, go to homepage, icon:logo-wordmark">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions" role="navigation">
        <a class="button primary" href="/join" data-ga-click="(Logged out) Header, clicked Sign up, text:sign-up">Sign up</a>
      <a class="button" href="/login?return_to=%2FTAWTonic%2FAltis-Life%2Fblob%2Fmaster%2FextDB-Build%2FAltis_Life.Altis%2FSpyGlass%2Fmacro.h" data-ga-click="(Logged out) Header, clicked Sign in, text:sign-in">Sign in</a>
    </div>

    <div class="site-search repo-scope js-site-search" role="search">
      <form accept-charset="UTF-8" action="/TAWTonic/Altis-Life/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/TAWTonic/Altis-Life/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <input type="text"
    class="js-site-search-field is-clearable"
    data-hotkey="s"
    name="q"
    placeholder="Search"
    data-global-scope-placeholder="Search GitHub"
    data-repo-scope-placeholder="Search"
    tabindex="1"
    autocapitalize="off">
  <div class="scope-badge">This repository</div>
</form>
    </div>

      <ul class="header-nav left" role="navigation">
          <li class="header-nav-item">
            <a class="header-nav-link" href="/explore" data-ga-click="(Logged out) Header, go to explore, text:explore">Explore</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/features" data-ga-click="(Logged out) Header, go to features, text:features">Features</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://enterprise.github.com/" data-ga-click="(Logged out) Header, go to enterprise, text:enterprise">Enterprise</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/blog" data-ga-click="(Logged out) Header, go to blog, text:blog">Blog</a>
          </li>
      </ul>

  </div>
</div>



      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        
<ul class="pagehead-actions">

  <li>
      <a href="/login?return_to=%2FTAWTonic%2FAltis-Life"
    class="minibutton with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to watch a repository" rel="nofollow">
    <span class="octicon octicon-eye"></span>
    Watch
  </a>
  <a class="social-count" href="/TAWTonic/Altis-Life/watchers">
    11
  </a>


  </li>

  <li>
      <a href="/login?return_to=%2FTAWTonic%2FAltis-Life"
    class="minibutton with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to star a repository" rel="nofollow">
    <span class="octicon octicon-star"></span>
    Star
  </a>

    <a class="social-count js-social-count" href="/TAWTonic/Altis-Life/stargazers">
      13
    </a>

  </li>

    <li>
      <a href="/login?return_to=%2FTAWTonic%2FAltis-Life"
        class="minibutton with-count tooltipped tooltipped-n"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-repo-forked"></span>
        Fork
      </a>
      <a href="/TAWTonic/Altis-Life/network" class="social-count">
        41
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="/TAWTonic" class="url fn" itemprop="url" rel="author"><span itemprop="title">TAWTonic</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/TAWTonic/Altis-Life" class="js-current-repository" data-pjax="#js-repo-pjax-container">Altis-Life</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            
<nav class="sunken-menu repo-nav js-repo-nav js-sidenav-container-pjax js-octicon-loaders"
     role="navigation"
     data-pjax="#js-repo-pjax-container"
     data-issue-count-url="/TAWTonic/Altis-Life/issues/counts">
  <ul class="sunken-menu-group">
    <li class="tooltipped tooltipped-w" aria-label="Code">
      <a href="/TAWTonic/Altis-Life" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /TAWTonic/Altis-Life">
        <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Issues">
        <a href="/TAWTonic/Altis-Life/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /TAWTonic/Altis-Life/issues">
          <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
          <span class="js-issue-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>      </li>

    <li class="tooltipped tooltipped-w" aria-label="Pull Requests">
      <a href="/TAWTonic/Altis-Life/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g p" data-selected-links="repo_pulls /TAWTonic/Altis-Life/pulls">
          <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
          <span class="js-pull-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>


  </ul>
  <div class="sunken-menu-separator"></div>
  <ul class="sunken-menu-group">

    <li class="tooltipped tooltipped-w" aria-label="Pulse">
      <a href="/TAWTonic/Altis-Life/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-selected-links="pulse /TAWTonic/Altis-Life/pulse">
        <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

    <li class="tooltipped tooltipped-w" aria-label="Graphs">
      <a href="/TAWTonic/Altis-Life/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-selected-links="repo_graphs repo_contributors /TAWTonic/Altis-Life/graphs">
        <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>
  </ul>


</nav>

              <div class="only-with-full-nav">
                  
<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/TAWTonic/Altis-Life.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/TAWTonic/Altis-Life" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>



<p class="clone-options">You can clone with
  <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a> or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</p>


  <a href="http://windows.github.com" class="minibutton sidebar-button" title="Save TAWTonic/Altis-Life to your computer and use it in GitHub Desktop." aria-label="Save TAWTonic/Altis-Life to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>

                <a href="/TAWTonic/Altis-Life/archive/master.zip"
                   class="minibutton sidebar-button"
                   aria-label="Download the contents of TAWTonic/Altis-Life as a zip file"
                   title="Download the contents of TAWTonic/Altis-Life as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          

<a href="/TAWTonic/Altis-Life/blob/2218006927a4ad9825a37eedbfdd5db433e37162/extDB-Build/Altis_Life.Altis/SpyGlass/macro.h" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:e2a9c71158302b8ef5e63b76bda2a9cb -->

<div class="file-navigation js-zeroclipboard-container">
  
<div class="select-menu js-menu-container js-select-menu left">
  <span class="minibutton select-menu-button js-menu-target css-truncate" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    title="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/TAWTonic/Altis-Life/blob/dev/extDB-Build/Altis_Life.Altis/SpyGlass/macro.h"
               data-name="dev"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="dev">
                dev
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/TAWTonic/Altis-Life/blob/master/extDB-Build/Altis_Life.Altis/SpyGlass/macro.h"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="master">
                master
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

  <div class="button-group right">
    <a href="/TAWTonic/Altis-Life/find/master"
          class="js-show-file-finder minibutton empty-icon tooltipped tooltipped-s"
          data-pjax
          data-hotkey="t"
          aria-label="Quickly jump between files">
      <span class="octicon octicon-list-unordered"></span>
    </a>
    <button aria-label="Copy file path to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
  </div>

  <div class="breadcrumb js-zeroclipboard-target">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/TAWTonic/Altis-Life" class="" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">Altis-Life</span></a></span></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/TAWTonic/Altis-Life/tree/master/extDB-Build" class="" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">extDB-Build</span></a></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/TAWTonic/Altis-Life/tree/master/extDB-Build/Altis_Life.Altis" class="" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">Altis_Life.Altis</span></a></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/TAWTonic/Altis-Life/tree/master/extDB-Build/Altis_Life.Altis/SpyGlass" class="" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">SpyGlass</span></a></span><span class="separator">/</span><strong class="final-path">macro.h</strong>
  </div>
</div>


  <div class="commit file-history-tease">
    <div class="file-history-tease-header">
        <img alt="TAWTonic" class="avatar" data-user="4950691" height="24" src="https://avatars3.githubusercontent.com/u/4950691?v=3&amp;s=48" width="24" />
        <span class="author"><a href="/TAWTonic" rel="author">TAWTonic</a></span>
        <time datetime="2015-02-04T07:19:13Z" is="relative-time">Feb 4, 2015</time>
        <div class="commit-title">
            <a href="/TAWTonic/Altis-Life/commit/2218006927a4ad9825a37eedbfdd5db433e37162" class="message" data-pjax="true" title="4.0 Framework changes

This is most likely the last thing I ever give to the public ever again.
This contains a change over in the framework design and core
configuration. Macros are used A LOT in this build and that is to get
the lazy fucking people away from using my work. If you want to modify
it then guess what.. You&#39;re putting the time into learning a little bit
more.

The code changes are no where close to complete and there are problems
still lingering in this build..

Spyglass variable checker has also been changed over to scan ALL
variables set in all namespaces and the variable list is not complete
but I would assume Yuka will be correcting that later on.

Nothing of what I really set out to do for this build is completed or
even done and I have ripped out features that were meant to be added.">4.0 Framework changes</a>
        </div>
    </div>

    <div class="participation">
      <p class="quickstat">
        <a href="#blob_contributors_box" rel="facebox">
          <strong>1</strong>
           contributor
        </a>
      </p>
      
    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img alt="TAWTonic" data-user="4950691" height="24" src="https://avatars3.githubusercontent.com/u/4950691?v=3&amp;s=48" width="24" />
            <a href="/TAWTonic">TAWTonic</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file">
  <div class="file-header">
    <div class="file-info">
        68 lines (62 sloc)
        <span class="file-info-divider"></span>
      3.498 kb
    </div>
    <div class="file-actions">
      <div class="button-group">
        <a href="/TAWTonic/Altis-Life/raw/master/extDB-Build/Altis_Life.Altis/SpyGlass/macro.h" class="minibutton " id="raw-url">Raw</a>
          <a href="/TAWTonic/Altis-Life/blame/master/extDB-Build/Altis_Life.Altis/SpyGlass/macro.h" class="minibutton js-update-url-with-hash">Blame</a>
        <a href="/TAWTonic/Altis-Life/commits/master/extDB-Build/Altis_Life.Altis/SpyGlass/macro.h" class="minibutton " rel="nofollow">History</a>
      </div><!-- /.button-group -->

        <a class="octicon-button tooltipped tooltipped-nw"
           href="http://windows.github.com" aria-label="Open this file in GitHub for Windows">
            <span class="octicon octicon-device-desktop"></span>
        </a>

          <a class="octicon-button disabled tooltipped tooltipped-w" href="#"
             aria-label="You must be signed in to make or propose changes"><span class="octicon octicon-pencil"></span></a>

        <a class="octicon-button danger disabled tooltipped tooltipped-w" href="#"
           aria-label="You must be signed in to make or propose changes">
        <span class="octicon octicon-trashcan"></span>
      </a>
    </div><!-- /.actions -->
  </div>
  

  <div class="blob-wrapper data type-c">
      <table class="highlight tab-size-8 js-file-line-container">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">SYSTEM_TAG</span> <span class="pl-s1"><span class="pl-pds">&quot;</span>life<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">ITEM_TAG</span> format[<span class="pl-s1"><span class="pl-pds">&quot;</span><span class="pl-c1">%1%</span>2<span class="pl-pds">&quot;</span></span>,SYSTEM_TAG,<span class="pl-s1"><span class="pl-pds">&quot;</span>item_<span class="pl-pds">&quot;</span></span>]</td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">SUB</span>(<span class="pl-v">var1,var2</span>) var1 = var1 - var2</td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">ADD</span>(<span class="pl-v">var1,var2</span>) var1 = var1 + var2</td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">SEL</span>(<span class="pl-v">ARRAY,INDEX</span>) (ARRAY select INDEX)</td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">CASH</span> life_cash</td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">BANK</span> life_atmbank</td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">GANG_FUNDS</span> grpPlayer getVariable [<span class="pl-s1"><span class="pl-pds">&quot;</span>gang_bank<span class="pl-pds">&quot;</span></span>,<span class="pl-c1">0</span>];</td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code js-file-line"><span class="pl-c">//Namespace Macros</span></td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">SVAR_MNS</span> missionNamespace setVariable </td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">SVAR_UINS</span> uiNamespace setVariable </td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">SVAR_PNS</span> parsingNamespace setVariable </td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">GVAR_MNS</span> missionNamespace getVariable </td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">GVAR_UINS</span> uiNamespace getVariable</td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code js-file-line"><span class="pl-c">//Scripting Macros</span></td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">CONST</span>(<span class="pl-v">var1,var2</span>) var1 = compileFinal (<span class="pl-k">if</span>(typeName var2 == <span class="pl-s1"><span class="pl-pds">&quot;</span>STRING<span class="pl-pds">&quot;</span></span>) then {var2} <span class="pl-k">else</span> {<span class="pl-s3">str</span>(var2)})</td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">CONSTVAR</span>(<span class="pl-v">var</span>) var = compileFinal (<span class="pl-k">if</span>(typeName var == <span class="pl-s1"><span class="pl-pds">&quot;</span>STRING<span class="pl-pds">&quot;</span></span>) then {var} <span class="pl-k">else</span> {<span class="pl-s3">str</span>(var)})</td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">FETCH_CONST</span>(<span class="pl-v">var</span>) (call var)</td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">PVAR_ALL</span>(<span class="pl-v">var</span>) publicVariable var</td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">PVAR_SERV</span>(<span class="pl-v">var</span>) publicVariableServer var</td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">PVAR_ID</span>(<span class="pl-v">var,id</span>) id publicVariableClient var</td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">GVAR</span> getVariable</td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">SVAR</span> setVariable</td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">RIFLE</span> primaryWeapon player</td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">RIFLE_ITEMS</span> primaryWeaponItems player</td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">PISTOL</span> handgunWeapon player</td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">PISTOL_ITEMS</span> handgunItems player</td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">LAUNCHER</span> secondaryWeapon player</td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">EXTDB_FAILED</span>(<span class="pl-v">MESSAGE</span>) \</td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code js-file-line">	life_server_extDB_notLoaded = [<span class="pl-c1">true</span>,##MESSAGE]; \</td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code js-file-line">	<span class="pl-en">PVAR_ALL</span>(<span class="pl-s1"><span class="pl-pds">&quot;</span>life_server_extDB_notLoaded<span class="pl-pds">&quot;</span></span>); \</td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code js-file-line">	diag_log MESSAGE;</td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code js-file-line"><span class="pl-c">//Display Macros</span></td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">CONTROL</span>(<span class="pl-v">disp,ctrl</span>) ((findDisplay ##disp) displayCtrl ##ctrl)</td>
      </tr>
      <tr>
        <td id="L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">CONTROL_DATA</span>(<span class="pl-v">ctrl</span>) (lbData[##ctrl,(lbCurSel ##ctrl)])</td>
      </tr>
      <tr>
        <td id="L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">CONTROL_DATAI</span>(<span class="pl-v">ctrl,index</span>) ctrl lbData index</td>
      </tr>
      <tr>
        <td id="L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-code js-file-line"><span class="pl-c">//System Macros</span></td>
      </tr>
      <tr>
        <td id="L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">grpPlayer</span> group player</td>
      </tr>
      <tr>
        <td id="L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">steamid</span> getPlayerUID player</td>
      </tr>
      <tr>
        <td id="L44" class="blob-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">LICENSE_VARNAME</span>(<span class="pl-v">varName,flag</span>) format[<span class="pl-s1"><span class="pl-pds">&quot;</span>license_<span class="pl-ii">%</span>1_<span class="pl-ii">%</span>2<span class="pl-pds">&quot;</span></span>,flag,M_CONFIG(getText,<span class="pl-s1"><span class="pl-pds">&quot;</span>Licenses<span class="pl-pds">&quot;</span></span>,varName,<span class="pl-s1"><span class="pl-pds">&quot;</span>variable<span class="pl-pds">&quot;</span></span>)]</td>
      </tr>
      <tr>
        <td id="L45" class="blob-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">LICENSE_VALUE</span>(<span class="pl-v">varName,flag</span>) GVAR_MNS [LICENSE_VARNAME(varName,flag),<span class="pl-c1">false</span>]</td>
      </tr>
      <tr>
        <td id="L46" class="blob-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">ITEM_VARNAME</span>(<span class="pl-v">varName</span>) format[<span class="pl-s1"><span class="pl-pds">&quot;</span>life_inv_<span class="pl-ii">%</span>1<span class="pl-pds">&quot;</span></span>,M_CONFIG(getText,<span class="pl-s1"><span class="pl-pds">&quot;</span>VirtualItems<span class="pl-pds">&quot;</span></span>,varName,<span class="pl-s1"><span class="pl-pds">&quot;</span>variable<span class="pl-pds">&quot;</span></span>)]</td>
      </tr>
      <tr>
        <td id="L47" class="blob-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">ITEM_VALUE</span>(<span class="pl-v">varName</span>) GVAR_MNS [ITEM_VARNAME(varName),<span class="pl-c1">0</span>]</td>
      </tr>
      <tr>
        <td id="L48" class="blob-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">ITEM_ILLEGAL</span>(<span class="pl-v">varName</span>) M_CONFIG(getNumber,<span class="pl-s1"><span class="pl-pds">&quot;</span>VirtualItems<span class="pl-pds">&quot;</span></span>,ITEM_VARNAME(varName),<span class="pl-s1"><span class="pl-pds">&quot;</span>illegal<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L49" class="blob-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">ITEM_SELLPRICE</span>(<span class="pl-v">varName</span>) M_CONFIG(getNumber,<span class="pl-s1"><span class="pl-pds">&quot;</span>VirtualItems<span class="pl-pds">&quot;</span></span>,ITEM_VARNAME(varName),<span class="pl-s1"><span class="pl-pds">&quot;</span>sellPrice<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L50" class="blob-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">ITEM_BUYPRICE</span>(<span class="pl-v">varName</span>) M_CONFIG(getNumber,<span class="pl-s1"><span class="pl-pds">&quot;</span>VirtualItems<span class="pl-pds">&quot;</span></span>,ITEM_VARNAME(varName),<span class="pl-s1"><span class="pl-pds">&quot;</span>buyPrice<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L51" class="blob-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">ITEM_NAME</span>(<span class="pl-v">varName</span>) M_CONFIG(getText,<span class="pl-s1"><span class="pl-pds">&quot;</span>VirtualItems<span class="pl-pds">&quot;</span></span>,varName,<span class="pl-s1"><span class="pl-pds">&quot;</span>displayName<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L52" class="blob-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L53" class="blob-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-code js-file-line"><span class="pl-c">//Condition Macros</span></td>
      </tr>
      <tr>
        <td id="L54" class="blob-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">EQUAL</span>(<span class="pl-v">condition1,condition2</span>) condition1 isEqualTo condition2</td>
      </tr>
      <tr>
        <td id="L55" class="blob-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">KINDOF_ARRAY</span>(<span class="pl-v">a,b</span>) [##a,##b] call {_veh = _this <span class="pl-s3">select</span> <span class="pl-c1">0</span>;_types = _this <span class="pl-s3">select</span> <span class="pl-c1">1</span>;_res = <span class="pl-c1">false</span>; {<span class="pl-k">if</span> (_veh isKindOf _x) exitwith { _res = <span class="pl-c1">true</span> };} forEach _types;_res}</td>
      </tr>
      <tr>
        <td id="L56" class="blob-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L57" class="blob-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-code js-file-line"><span class="pl-c">//Config Macros</span></td>
      </tr>
      <tr>
        <td id="L58" class="blob-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">FETCH_CONFIG</span>(<span class="pl-v">TYPE,CFG,SECTION,CLASS,ENTRY</span>) TYPE(configFile &gt;&gt; CFG &gt;&gt; SECTION &gt;&gt; CLASS &gt;&gt; ENTRY)</td>
      </tr>
      <tr>
        <td id="L59" class="blob-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">FETCH_CONFIG2</span>(<span class="pl-v">TYPE,CFG,CLASS,ENTRY</span>) TYPE(configFile &gt;&gt; CFG &gt;&gt; CLASS &gt;&gt; ENTRY)</td>
      </tr>
      <tr>
        <td id="L60" class="blob-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">FETCH_CONFIG3</span>(<span class="pl-v">TYPE,CFG,SECTION,CLASS,ENTRY,SUB</span>) TYPE(configFile &gt;&gt; CFG &gt;&gt; SECTION &gt;&gt; CLASS &gt;&gt; ENTRY &gt;&gt; SUB)</td>
      </tr>
      <tr>
        <td id="L61" class="blob-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">FETCH_CONFIG4</span>(<span class="pl-v">TYPE,CFG,SECTION,CLASS,ENTRY,SUB,SUB2</span>) TYPE(configFile &gt;&gt; CFG &gt;&gt; SECTION &gt;&gt; CLASS &gt;&gt; ENTRY &gt;&gt; SUB &gt;&gt; SUB2)</td>
      </tr>
      <tr>
        <td id="L62" class="blob-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">M_CONFIG</span>(<span class="pl-v">TYPE,CFG,CLASS,ENTRY</span>) TYPE(missionConfigFile &gt;&gt; CFG &gt;&gt; CLASS &gt;&gt; ENTRY)</td>
      </tr>
      <tr>
        <td id="L63" class="blob-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">BASE_CONFIG</span>(<span class="pl-v">CFG,CLASS</span>) inheritsFrom(configFile &gt;&gt; CFG &gt;&gt; CLASS)</td>
      </tr>
      <tr>
        <td id="L64" class="blob-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">LIFE_SETTINGS</span>(<span class="pl-v">TYPE,SETTING</span>) TYPE(missionConfigFile &gt;&gt; <span class="pl-s1"><span class="pl-pds">&quot;</span>Life_Settings<span class="pl-pds">&quot;</span></span> &gt;&gt; SETTING)</td>
      </tr>
      <tr>
        <td id="L65" class="blob-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">CONFIG_VEHICLES</span> <span class="pl-s1"><span class="pl-pds">&quot;</span>CfgVehicles<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L66" class="blob-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">CONFIG_WEAPONS</span> <span class="pl-s1"><span class="pl-pds">&quot;</span>CfgWeapons<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L67" class="blob-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">CONFIG_MAGAZINES</span> <span class="pl-s1"><span class="pl-pds">&quot;</span>CfgMagazines<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L68" class="blob-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-code js-file-line">#<span class="pl-k">define</span> <span class="pl-en">CONFIG_GLASSES</span> <span class="pl-s1"><span class="pl-pds">&quot;</span>CfgGlasses<span class="pl-pds">&quot;</span></span></td>
      </tr>
</table>

  </div>

</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="http://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="http://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="/about" data-ga-click="Footer, go to about, text:about">About</a></li>

    </ul>

    <a href="/" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2015 <span title="0.04069s from github-fe124-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="/contact" data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
    </ul>
  </div>
</div>


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents" placeholder=""></textarea>
      <div class="suggester-container">
        <div class="suggester fullscreen-suggester js-suggester js-navigation-container"></div>
      </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    

    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x flash-close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-9643b0378c6bcb216adcdaaaa703eed77aa239aaf1c2ae44cadb2fb5099ec172.js"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-3c07bf7991cd8ce14549bc2a8055f3f8c20389c5d2f7a3f27231fe848f33a0ca.js"></script>
      
      

  </body>
</html>

