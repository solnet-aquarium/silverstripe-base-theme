<% if $IsReadonly %>
	<ul class="SelectionGroup<% if extraClass %> $extraClass<% end_if %>">
	<% loop $FieldSet %>
		<% if $Selected %>
			<li$Selected>
				$RadioLabel
				$FieldHolder
			</li>
		<% end_if %>
	<% end_loop %>
	</ul>
<% else %>
	<ul class="SelectionGroup<% if extraClass %> $extraClass<% end_if %>"><% loop FieldSet %><li$Selected>{$RadioButton}{$RadioLabel}{$FieldHolder}</li><% end_loop %></ul>
<% end_if %>
