<% if $CommentsEnabled %>
	<div id="$CommentHolderID" class="comments-holder-container">
	
		<div class="comments-holder">			
			<% if $Comments %>
				<h2>Comments ($AllVisibleComments.Count)</h2>
				<% with $AllVisibleComments.Last %>
					<p class="link-to-latest"><a href="{$Link}">Latest comment {$Created.Ago} by {$AuthorName}</a></p>
				<% end_with %>
				<ol class="comments-list root-level">
					<% loop $Comments %>
						<li class="comment $EvenOdd<% if FirstLast %> $FirstLast <% end_if %> $SpamClass $ExtraClass">
							<% include CommentsInterface_singlecomment %>
						</li>
					<% end_loop %>
				</ol>
			<% end_if %>
		</div>

		<div class="commenting-rss-feed">
			<ul class="action-links">
				<% if $DeleteAllLink %>
					<li class="delete-comments">
						<a href="$DeleteAllLink"><% _t('CommentsInterface_ss.DELETEALLCOMMENTS','Delete all comments on this page') %></a>
					</li>
				<% end_if %>
				<% if $Comments %>
					<li><a href="$CommentRSSLinkPage"><% _t('CommentsInterface_ss.RSSFEEDCOMMENTS', 'RSS feed for comments on this page') %></a></li>
					<li><a href="$CommentRSSLink"><% _t('CommentsInterface_ss.RSSFEEDALLCOMMENTS', 'RSS feed for all comments') %></a></li>
				<% end_if %>
			</ul>
		</div>

		<div class="commenting-area">
			<% if $CanPostComment %>
				<h3>Leave a comment</h3>
				<% if $ModeratedSubmitted %>
					<p id="{$CommentHolderID}_PostCommentForm_error" class="alert alert-success"><% _t('CommentsInterface_ss.AWAITINGMODERATION', 'Your comment has been submitted and is now awaiting moderation.') %></p>
				<% end_if %>
				$AddCommentForm
			<% else %>
				<p><% _t('CommentsInterface_ss.COMMENTLOGINERROR', 'You cannot post comments until you have logged in') %><% if PostingRequiresPermission %>,<% _t('CommentsInterface_ss.COMMENTPERMISSIONERROR', 'and that you have an appropriate permission level') %><% end_if %>. 
					<a href="Security/login?BackURL={$Parent.Link}" title="<% _t('CommentsInterface_ss.LOGINTOPOSTCOMMENT', 'Login to post a comment') %>"><% _t('CommentsInterface_ss.COMMENTPOSTLOGIN', 'Login Here') %></a>.
				</p>
			<% end_if %>
		</div>
	</div>
<% end_if %>
	
