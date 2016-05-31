<% if Pages %>
	<nav role="navigation" class="breadcrumbs">
		<%-- The following <p> tag is for screen readers --%>
		<p id="breadcrumblabel">You are here</p>
		<%-- Use an ordered list to semantically show the levels of navigation --%>
		<ol aria-labelledby="breadcrumblabel">
			<%-- Chevrons or separators are applied via :after elements in CSS --%>
			<li><a href="$Baseref" title="Home">Home</a></li>
			<% loop Pages %>
				<% if Last %>
					<li class="active"><a title="$Title.XML">$Title.XML</a></li>
				<% else %>
					<li><a href="$Link" title="$MenuTitle.XML">$MenuTitle.XML</a></li>
				<% end_if %>
			<% end_loop %>
		</ol>
	</nav>
<% end_if %>