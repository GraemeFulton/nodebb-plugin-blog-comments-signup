<!-- IF tid -->
	<!-- IF atTop -->
	<div  style="position:fixed;top:0px;z-index:999999;left:0;width:100%;">
		<div style="max-width: 1320px; margin: 0px auto;position:relative;" class="pageWrap pageWrap--l" >
			<div class="topic-profile-pic-login user user-login">
				<!-- IF isLoggedIn -->
				<a href="{relative_path}/user/{user.userslug}">
							<!-- IF user.picture -->
							<img src="{user.picture}" alt="{user.username}" class="profile-image" title="{user.username}">
							<!-- ELSE -->
							<div class="profile-image" style="background-color: {user.icon:bgColor}" title="{user.username}" alt="{user.username}">{user.icon:text}</div>
							<!-- ENDIF user.picture -->
				</a>
				<!-- ELSE -->
				<img src="https://1.gravatar.com/avatar/177d180983be7a2c95a4dbe7451abeba?s=95&d=&r=PG" class="login-profile-image" />
				<!-- ENDIF isLoggedIn -->
			</div>
			<div class="user-signin-area">
				<!-- IF isLoggedIn -->
				<img src="{user.picture}" class="profile-image" />
				<!-- ELSE -->
					<a href="https://community.prototypr.io/"><button id="nodebb-register" class="button button--m button--flat bg-blue">Join the community</button></a>
				<!-- ENDIF isLoggedIn -->
			</div>
		</div>
	</div>


		<div class="topic-profile-pic user">
			<!-- IF isLoggedIn -->
			<img src="{user.picture}" class="profile-image" />
			<!-- ELSE -->
			<img src="https://1.gravatar.com/avatar/177d180983be7a2c95a4dbe7451abeba?s=95&d=&r=PG" class="profile-image" />
			<!-- ENDIF isLoggedIn -->
		</div>
		<form action="{relative_path}/comments/reply" method="post">
			<textarea id="nodebb-content" class="form-control" name="content" placeholder="Join the conversation" rows="3"></textarea>
		<!-- IF isLoggedIn -->
			<small>Signed in as <strong>{user.username}</strong>. <strong id="nodebb-error"></strong></small>
			<button class="btn btn-primary">Post a Reply</button>
			<input type="hidden" name="_csrf" value="{token}" />
			<input type="hidden" name="tid" value="{tid}" />
			<input type="hidden" name="url" value="{redirect_url}" />
		</form>
		<!-- ELSE -->
		</form>
		<button class="btn btn-primary" id="nodebb-register">Register</button>
		<button class="btn btn-primary" id="nodebb-login">Login</button>
		<br />
		<!-- ENDIF isLoggedIn -->
	<!-- ENDIF atTop -->

	<ul id="nodebb-comments-list">
		<!-- BEGIN posts -->
		<li <!-- IF pagination --> class="nodebb-post-fadein" <!-- ENDIF pagination --> <!-- IF !posts.index --> class="nodebb-post-fadein" <!-- ENDIF !posts.index --> >
			<div class="topic-item">
				<div class="topic-body">
					<div class="topic-profile-pic">
						<a href="{relative_path}/user/{user.userslug}">
							<!-- IF user.picture -->
							<img src="{user.picture}" alt="{user.username}" class="profile-image" title="{user.username}">
							<!-- ELSE -->
							<div class="profile-image" style="background-color: {user.icon:bgColor}" title="{user.username}" alt="{user.username}">{user.icon:text}</div>
							<!-- ENDIF user.picture -->
						</a>
					</div>
					<div class="topic-text">
						<div class="post-content" itemprop="text"><small><strong>{user.username}</strong> commented {posts.timestamp}</small><br />{posts.content}</div>
					</div>
				</div>
			</div>
		</li>
		<!-- END posts -->
	</ul>
	<br />

	<!-- IF atBottom -->
		<div class="topic-profile-pic user">
			<!-- IF isLoggedIn -->
			<img src="{user.picture}" class="profile-image" />
			<!-- ELSE -->
			<img src="http://1.gravatar.com/avatar/177d180983be7a2c95a4dbe7451abeba?s=95&d=&r=PG" class="profile-image" />
			<!-- ENDIF isLoggedIn -->
		</div>
		<form action="{relative_path}/comments/reply" method="post">
			<textarea id="nodebb-content" class="form-control" name="content" placeholder="Join the conversation" rows="3"></textarea>
		<!-- IF isLoggedIn -->
			<small>Signed in as <strong>{user.username}</strong>. <strong id="nodebb-error"></strong></small>
			<button class="btn btn-primary">Post a Reply</button>
			<input type="hidden" name="_csrf" value="{token}" />
			<input type="hidden" name="tid" value="{tid}" />
			<input type="hidden" name="url" value="{redirect_url}" />
		</form>
		<!-- ELSE -->
		</form>
		<button class="btn btn-primary" id="nodebb-register">Register</button>
		<button class="btn btn-primary" id="nodebb-login">Login</button>
		<br />
		<!-- ENDIF isLoggedIn -->
	<!-- ENDIF atBottom -->

	<small class="nodebb-copyright"> <a href="{relative_path}/topic/{tid}"><button class="btn btn-primary">View original thread</button></a></small>
	<button class="btn btn-primary" <!-- IF !posts.length -->style="display: none"<!-- ENDIF !posts.length --> id="nodebb-load-more">Load more comments...</button>
<!-- ELSE -->
	<div  style="position:fixed;top:0px;z-index:999999;left:0;width:100%;">
		<div style="max-width: 1320px; margin: 0px auto;position:relative;" class="pageWrap pageWrap--l" >
			<div class="topic-profile-pic-login user user-login">
				<!-- IF isLoggedIn -->
				<a href="{relative_path}/user/{user.userslug}">
							<!-- IF user.picture -->
							<img src="{user.picture}" alt="{user.username}" class="profile-image" title="{user.username}">
							<!-- ELSE -->
							<div class="profile-image" style="background-color: {user.icon:bgColor}" title="{user.username}" alt="{user.username}">{user.icon:text}</div>
							<!-- ENDIF user.picture -->
				</a>
				<!-- ELSE -->
				<img src="https://1.gravatar.com/avatar/177d180983be7a2c95a4dbe7451abeba?s=95&d=&r=PG" class="login-profile-image" />
				<!-- ENDIF isLoggedIn -->
			</div>
			<div class="user-signin-area">
				<!-- IF isLoggedIn -->
				<img src="{user.picture}" class="profile-image" />
				<!-- ELSE -->
					<a href="https://community.prototypr.io/"><button id="nodebb-register" class="button button--m button--flat bg-blue">Join the community</button></a>
				<!-- ENDIF isLoggedIn -->
			</div>
		</div>
	</div>
	<div class="comments-disabled">
		Commenting has been disabled.<br>
		<div class="marginTop-s">
		<a href="https://community.prototypr.io"><button class="button button--m button--flat bg-blue">Enter forum</button></a>
	</div>
	</div>
	<!-- IF isAdmin -->
	<form action="{relative_path}/comments/publish" method="post">
		<button class="btn btn-primary">Publish this article to NodeBB</button>
		<input type="hidden" name="markdown" id="nodebb-content-markdown" />
		<input type="hidden" name="title" id="nodebb-content-title" />
		<input type="hidden" name="cid" id="nodebb-content-cid" />
		<input type="hidden" name="tags" id="nodebb-content-tags" />
		<input type="hidden" name="id" value="{article_id}" />
		<input type="hidden" name="url" value="{redirect_url}" />
		<input type="hidden" name="_csrf" value="{token}" />
	</form>
	<!-- ENDIF isAdmin -->
<!-- ENDIF tid -->
