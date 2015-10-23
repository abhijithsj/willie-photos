	<nav class="navbar navbar-inverse navbar-static-top">
		<div class="container"><!-- Container is centered in page -->
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="{linkto page="index.php"}" class="navbar-brand"><img src="{$mainLogo}" id="mainLogo" class="img-responsive" style="margin-top: -6px;"></a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav topNav">
					{if $config.settings.news}<li id="navNews"><a href="{linkto page="news.php"}">{$lang.news}</a></li>{/if}
					{if $featuredTab}
						<li id="featuredNavButton" class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">{$lang.featuredItems}<b class="caret"></b></a>
							<ul class="dropdown-menu">
								{if $config.settings.featuredpage}<li id="featuredSubnavMedia"><a href="{linkto page="gallery.php?mode=featured-media&page=1"}">{$lang.mediaNav}</a></li>{/if}
								{if $config.settings.printpage}<li id="featuredSubnavPrints"><a href="{linkto page="featured.php?mode=prints"}">{$lang.prints}</a></li>{/if}
								{if $config.settings.prodpage}<li id="featuredSubnavProducts"><a href="{linkto page="featured.php?mode=products"}">{$lang.products}</a></li>{/if}
								<!--<li class="divider"></li>
								<li class="dropdown-header">Nav header</li>-->
								{if $config.settings.packpage}<li id="featuredSubnavPackages"><a href="{linkto page="featured.php?mode=packages"}">{$lang.packages}</a></li>{/if}
								{if $config.settings.collpage}<li id="featuredSubnavCollections"><a href="{linkto page="featured.php?mode=collections"}">{$lang.collections}</a></li>{/if}
								{if $config.settings.subpage and $config.settings.subscriptions}<li id="featuredSubnavSubscriptions"><a href="{linkto page="featured.php?mode=subscriptions"}">{$lang.subscriptions}</a></li>{/if}
								{if $config.settings.creditpage}<li id="featuredSubnavCredits"><a href="{linkto page="featured.php?mode=credits"}">{$lang.credits}</a></li>{/if}
							</ul>
						</li>							
					{/if}
					<li id="navGalleries"><a href="{linkto page="gallery.php?mode=gallery"}">{$lang.galleries}</a></li>
					{if $config.settings.newestpage}<li id="navNewestMedia"><a href="{linkto page="gallery.php?mode=newest-media&page=1"}">{$lang.newestMedia}</a></li>{/if}
					{if $config.settings.popularpage}<li id="navPopularMedia"><a href="{linkto page="gallery.php?mode=popular-media&page=1"}">{$lang.popularMedia}</a></li>{/if}
					{if addon('contr') && {$contribLink} == 1}<li id="navContributors"><a href="{linkto page="contributors.php"}">{$lang.contributors}</a></li>{/if}
					{if $config.settings.promopage}<li id="navPromotions"><a href="{linkto page="promotions.php"}">{$lang.promotions}</a></li>{/if}
					{* Login Status & Name *}
					{if $config.settings.display_login}
						{if $loggedIn}
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">{$member.f_name} {$member.l_name}<b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="{linkto page="members.php"}">{$lang.myAccount}</a></li>
									{if $lightboxSystem}<li><a href="{linkto page="lightboxes.php"}">{$lang.lightboxes}</a></li>{/if}
									<li><a href="{linkto page="login.php?cmd=logout"}">{$lang.logout}</a></li>
								</ul>
							</li>
						{else}
							{if $lightboxSystem}<li><a href="{linkto page="lightboxes.php"}">{$lang.lightboxes}</a></li>{/if}
							<li><a href="{linkto page="login.php?jumpTo=members"}">{$lang.login}</a></li>
							<!--<li><a href="{linkto page="create.account.php?jumpTo=members"}">{$lang.createAccount}</a></li>-->
						{/if}
					{/if}
				</li>
					
				</ul>
			</div>
		</div>
	</nav>