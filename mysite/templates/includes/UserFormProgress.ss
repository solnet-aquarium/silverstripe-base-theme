<% if $Steps.Count > 1 %>
	<div id="userform-progress" class="userform-progress" aria-hidden="true" style="display:none;">
		<p>Page <span class="current-step-number">1</span> of <span class="total-step-number">$Steps.Count</span></p>
		<nav aria-label="Pages in this form">
			<ul>
				<% loop $Steps %>
				<li class="<% if $First %> current<% end_if %>" data-for="$Name">
					<button class="" disabled="disabled">$Pos</button>
				</li>
				<% end_loop %>
			</ul>
		</nav>
		<h3 class="progress-title"></h3>
	</div>
<% end_if %>
