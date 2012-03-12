<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>
		<cfoutput>#rc.title#</cfoutput> - noSchema Podcast
	</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Podcasts without structure.">
	<meta name="author" content="James Brown and Aaron Greenlee">
	
	<!-- Le styles -->
	<link href="/_src/css/bootstrap.min.css" rel="stylesheet">
	<link href="/_src/css/style.css" rel="stylesheet">
	<style>
		body {
		    padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
		}
	</style>
	<link href="/_src/css/bootstrap-responsive.min.css" rel="stylesheet">
	
	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/libs/jquery-1.7.1.min.js"><\/script>')</script>
	
</head>

<cfoutput>
<body class="#listGetAt(rc.action, 1, '.')#">
</cfoutput>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-header">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="/">
					noSchema Podcast
				</a>
				<div class="nav-collapse nav-header">
					<ul class="nav">
						<cfoutput>#view('main/global_links')#</cfoutput>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
	
	<div class="body">
		<cfoutput>#body#</cfoutput>
	</div>
	
	<div class="navbar bottom-bar">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-footer">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<div class="brand">
					&copy; 2012 James Brown and Aaron Greenlee
				</div>
				<div class="nav-collapse nav-footer">
					<ul class="nav">
						<cfoutput>#view('main/global_links')#</cfoutput>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
	
	<script src="/_src/js/bootstrap.min.js"></script>
</body>
</html>