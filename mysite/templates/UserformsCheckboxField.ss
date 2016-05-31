<!-- !!!!!!!!!!!!!! Can we change $RightTitle to $SupportText  !!!!!!!!!!!!!! -->
<div class="checkbox-group">
    <input $AttributesHTML<% if $RightTitle %>aria-describedby="{$Name}_right_title" <% end_if %>/>
    <% if $Title %>
        <label class="checkbox-label" for="$ID">$Title</label>
    <% end_if %>
</div>
