<div class="row">
	<div class="<% if Menu(2) %>span9<% else %>span12<% end_if %>">
		<% include Breadcrumbs %>
		<div id="main" role="main">
			<h1 class="page-header">$Title</h1>
			$Content.RichLinks
			$Form
			<% include RelatedPages %>
			$CommentsForm
			<% include PrintShare %>
		</div>
		<% include LastEdited %>
	</div>
	<% if Menu(2) %>
		<aside class="span3">
			<% include SidebarNav %>
		</aside>
	<% end_if %>
</div>
