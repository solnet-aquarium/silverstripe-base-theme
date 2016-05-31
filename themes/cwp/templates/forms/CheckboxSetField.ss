<%-- Work needed: <legend> tag is a double up. Not sure why we have several options to add 'RightTitle' etc. Perhaps this can be deleted. --%>


<%-- <ul id="$ID" class="$extraClass"<% if Description %> title="$Description"<% end_if %> <% if $RightTitle %>aria-describedby="$ID-extra"<% end_if %> > --%>
<% if Options.Count %>
	<% loop Options %>
		<div class="checkbox-group">
			<input id="$ID" name="$Name" type="checkbox" value="$Value"<% if isChecked %> checked="checked"<% end_if %><% if isDisabled %> disabled="disabled"<% end_if %>>
			<label class="checkbox-label" for="$ID">$Title</label>
	<% end_loop %>
<% else %>
	<li>No options available</li>
<% end_if %>
