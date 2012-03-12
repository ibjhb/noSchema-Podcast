<cfset request.action = listGetAt(rc.action, 1, '.') />
<cfoutput>
	<li class="#(request.action eq 'main') ? 'active' : ''#"><a href="/">Home</a></li>
	<li class="#(request.action eq 'podcast') ? 'active' : ''#"><a href="/podcast/">Podcast</a></li>
	<li class="#(request.action eq 'about') ? 'active' : ''#"><a href="/about/">About</a></li>
	<li class="#(request.action eq 'contact') ? 'active' : ''#"><a href="/contact/">Contact</a></li>
</cfoutput>	