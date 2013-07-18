<form action="{base}/auth/login/?path=access_path&amp;ns=access&amp;login=login" class="form-horizontal" method="post">
	 <div class="control-group">
		<label class="control-label" for="inputEmail">Email / Username:</label>
		<div class="controls">
			<input type="text" id="inputEmail" placeholder="Email" name="email" value="">
		</div>
	</div>

	<div class="control-group">
		<label class="control-label" for="inputPassword">Password:</label>
		<div class="controls">
			<input type="password" id="inputPassword" placeholder="Wachtwoord" name="password" value="">
		</div>
	</div>

	<div class="control-group">
		<div class="controls">
			<button type="submit" class="btn btn-primary" name="login">Log in</button>
			<button class="btn btn-inverse" type="reset">Empty form</button>	
		</div>
	</div>
</form>
