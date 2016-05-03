<% if $FeaturedImage %>
	<figure>
		$FeaturedImage.SetHeight(150)
	</figure>
<% end_if %>
<header>
	<h2><a href="$Link">$Title</a></h2>
	<% include BlogPostMeta %>
</header>

<% if $Summary %>
	$Summary
<% else %>
	<p>$Excerpt</p>
<% end_if %>

<% include BlogEntryTags %>
