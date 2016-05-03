<!DOCTYPE html>

<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<% require themedCSS('reset') %>
	<% require themedCSS('typography') %>
	<% require themedCSS('form') %>
	<% require themedCSS('layout') %>
	<% require themedCSS('main-styles') %>
	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
</head>
<body class="$ClassName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
<% include Header %>
<%-- For debugging form layout only!!!! --%>
	<div class="debug-key" style="display: none;">
		<input type="checkbox" name="visibility" value="On" checked><span>Colour key visibility</span>
		<ul>
			<li>Legends: <span class="legend-colour"></span></li>
			<li>All inputs/label groups: <span class="input-colour"></span></li>
			<li>Direct parent containers of all input tags: <span class="parent-colour"></span></li>
			<li>Labels for text inputs: <span class="text-labels-colour"></span></li>
			<li>Labels for radio/checkbox inputs: <span class="radio-labels-colour"></span></li>
			<li>Field support text: <span class="field-support-colour"></span></li>
			<li>Field validation text: <span class="field-validation-colour"></span></li>
		</ul>
	</div>


<div class="main" role="main">
	<div class="inner line">
		$Layout
	</div>
</div>
<% include Footer %>

<% require javascript('framework/thirdparty/jquery/jquery.js') %>
<%-- Please move: Theme javascript (below) should be moved to mysite/code/page.php  --%>
<script type="text/javascript" src="{$ThemeDir}/javascript/script.js"></script>

</body>
</html>
