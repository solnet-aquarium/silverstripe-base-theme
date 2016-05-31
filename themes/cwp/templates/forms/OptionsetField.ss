<%-- Work needed: <legend> tag is a double up. Not sure why we have several options to add 'RightTitle' etc. Perhaps this can be deleted. --%>

<%-- <legend id="$ID" class="$extraClass"<% if Description %> title="$Description"<% end_if %> <% if $RightTitle %>aria-describedby="$ID-extra"<% end_if %>>$Description</legend> --%>
  
  <!-- Validation message is visually hidden and hidden from screen readers -->
  <%-- needs to be implemented !!!!! --%>
  <%-- <span class="error-msg" aria-hidden="true">Please make your selection</span> --%>
  
  <% loop Options %>
      <div class="radio-group">
        <input id="$ID" name="$Name" type="radio" value="$Value"<% if isChecked %> checked<% end_if %><% if isDisabled %> disabled<% end_if %>>
        <label for="$ID" class="radio-label">$Title</label>
      </div>
  <% end_loop %>

