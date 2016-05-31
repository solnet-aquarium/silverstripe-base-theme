<fieldset id="$Name" class="field-group<% if $extraClass %> $extraClass<% end_if %>"<% if $RightTitle %> aria-describedby="{$Name}_support_txt"<% end_if %>>
	<% if $Title %><legend>$Title</legend><% end_if %>
  
  <%-- !!!!!!!!!!!!!! Can we change $RightTitle to $SupportText  !!!!!!!!!!!!!! --%>
  <% if $RightTitle %><span id="{$Name}_support_txt" class="field-support-text">$RightTitle</span><% end_if %>

	<div class="radio-check-group">
		$Field
	</div>
  
	<% if $Message %><span class="message field-validation $MessageType">$Message</span><% end_if %>
</fieldset>
