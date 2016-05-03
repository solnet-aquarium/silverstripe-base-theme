<% if $Categories %>
	<ul class="blogcategories unstyled nav nav-list">
		<% loop $Categories %>
			<li class="blogcategories-{$Class}">
				<a href="$Link" title="View {$BlogPosts.Count} blog posts in category $Title.ATT">
					$Title.XML
				</a>
			</li>
		<% end_loop %>
	</ul>
<% end_if %>
