<ul class="nav pull-right">
	<li class="divider-vertical"></li>
	<li>
		<a href="{base}/users/index/?ns=controllers&amp;path=controller_path" title="Gebruikers pagina">
			<i class="icon-user"></i>
			{username}
		</a>
	</li>
	<li class="divider-vertical"></li>
	<li class="dropdown">
		<a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Settings pagina">
			<i class="icon icon-wrench"></i>
			<b class="caret"></b>
		</a>
		<ul class="dropdown-menu">
			<li><a href="{base}/settings/index/?ns=controllers&amp;path=controller_path">System instellingen</a></li>
			<li class="divider"></li>
			<li><a href="#" class="flushCache">Cache vernieuwen</a></li>
		</ul>
	</li>

	<li class="divider-vertical"></li>
	<li><a href="{base}/auth/logout/?path=access_path&amp;ns=access">uitloggen</a></li>
</ul>
