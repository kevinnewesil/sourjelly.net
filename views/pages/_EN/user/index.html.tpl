<h2>Account information</h2>
<div class="well row">
	<div class="forms span4">
		<form action="#" method="post" class="form-horizontal" >
			<div class="control-group">
				<label class="control-label" for="inputRegistered_at">Member since:</label>
				<div class="controls">
					<input type="text" id="inputRegistered_at" placeholder="{registered_at}" value="{registered_at}" disabled="disabled"/>
				</div>
			</div>
		</form>

		<form action="{base}/users/update/?ns=controllers&amp;path=controller_path" method="post" class="form-horizontal" id="userForm">
			<input type="hidden" name="userId" value="{id}">
			<input type="hidden" name="registered_at" value="{registered_at}">
			<div class="control-group">
				<label class="control-label" for="inputFirstname">Name:</label>
				<div class="controls">
					<input type="text" id="inputFirstname" placeholder="{firstname}" value="{firstname}" name="firstname">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputLastname">Lastname:</label>
				<div class="controls">
					<input type="text" id="inputLastname" placeholder="{lastname}" value="{lastname}" name="lastname">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputUsername">Username:</label>
				<div class="controls">
					<input type="text" id="inputUsername" placeholder="{username}" value="{username}" name="username">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputEmail">E-mail:</label>
				<div class="controls">
					<input type="text" id="inputEmail" placeholder="{email}" value="{email}" name="email">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputDob">Date of birth:</label>
				<div class="controls">
					<input type="text" id="inputDob" placeholder="{dob}" value="{dob}" name="dob">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPassword">Password:</label>
				<div class="controls">
					<input type="password" id="inputPassword" placeholder="Paswoord" value="" name="password">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPasswordCheck">Password check:</label>
				<div class="controls">
					<input type="password" id="inputPasswordCheck" placeholder="Paswoord check" value="" name="passwordCheck">
				</div>
			</div>


			<div class="control-group">
				<label class="control-label" for="developer"> <abbr title="Turn on special developer options"> developer: </abbr> </label>
				<div class="controls">
					<input type="checkbox" id="developer" name="developer" {checked}>
				</div>
			</div>

			<div class="control-group">
				<div class="controls">
					<input type="submit" name="submit" value="update" class="btn btn-primary btn-large">
				</div>
			</div>
		</form>
	</div>

	<div class="profilePic span4 offset2">
		<p class="alert alert-info">
			The profile picture is automatically loaded from <a href="http://www.gravatar.com">Gravatar</a> by your e-mail adress.
			if you don't have a gravatar account, hurry up and make one!
		</p>
		<img src="http://www.gravatar.com/avatar/{hashed_email}?s=300&amp;d={url_encoded}&amp;r=g" alt="Profile Picture!" class="img-polaroid"/>
	</div>
</div>
