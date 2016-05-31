<div class="">
	<%-- We don't support the span9 grid system --%>
	<%-- <div class="<% if Menu(2) %>span9<% else %>span12<% end_if %>"> --%>
		<% include Breadcrumbs %>
		<main id="main" role="main">
			<h1 class="page-header">$Title</h1>
			$Content.RichLinks
			$Form
			<% include RelatedPages %>
			$CommentsForm
			<% include PrintShare %>
		</main>
		<%-- <% include LastEdited %> --%>
	<% if Menu(2) %>
		<aside class="span3">
			<% include SidebarNav %>
		</aside>
	<% end_if %>
</div>
