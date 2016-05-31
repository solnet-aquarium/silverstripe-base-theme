<!-- field-group class wrapper is primarily for spacing between field groups -->
<div id="$Name" class="field-group<% if $extraClass %> $extraClass<% end_if %>">
    
    <% if $Title %>
        <label class="" for="$ID">$Title
            <!-- !!!!!!!!!!!!!! Can we change $RightTitle to $SupportText  !!!!!!!!!!!!!! -->
            <% if $RightTitle %>
                <span id="{$Name}_right_title" class="field-support-text">$RightTitle</span>
            <% end_if %>
        </label>
    <% end_if %>
    
    $Field

    <!-- Error message component -->
    <% if $Message %>
        <span class="$MessageType">$Message</span>
    <% end_if %>

</div>
