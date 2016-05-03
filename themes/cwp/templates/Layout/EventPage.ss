<div class="row">
	<div id="main" role="main">
		<div class="span9">
			<% include Breadcrumbs %>
			<h1 class="page-header">$Title</h1>

			<div class="clearfix">
				$Content.RichLinks
			</div>
			$Form
			<p><a href="$Parent.Link">←  Back to the event listing</a></p>
			<% include RelatedPages %>
			$CommentsForm
			<% include PrintShare %>
			<% include LastEdited %>
		</div>
		<aside class="span3">
			<div class="well update-information">
				<h2 class="nonvisual-indicator">Event information</h2>
				<dl>
					<% if $Date %>
						<dt>Date &amp; time:</dt>
						<dd><time datetime="$Date">$Date.Format(d/m/Y) <% if $StartTime %>$StartTime.Nice <% if $EndTime %>- $EndTime.Nice <% end_if %><% end_if %></time></dd>
					<% end_if %>
					<% if Location %>
						<dt>Location:</dt>
						<dd>$NiceLocation</dd>
					<% end_if %>
					<% if Terms %>
						<dt>Tags</dt>
						<dd>
							<ul class="unstyled update-tags">
								<% loop Terms %>
									<li class="label">$Name</li>
								<% end_loop %>
							</ul>
						</dd>
					<% end_if %>
				</dl>
			</div>
		</aside>
	</div>
</div>