<div id="$Name" class="field<% if $extraClass %> $extraClass<% end_if %>">
	<div class="middleColumn">
		$Field
	</div>
	<% if $RightTitle %><span id="{$Name}_right_title" class="right-title field-support-text">$RightTitle</span><% end_if %>
	<% if $Message %><span class="message field-validation $MessageType">$Message</span><% end_if %>
</div>