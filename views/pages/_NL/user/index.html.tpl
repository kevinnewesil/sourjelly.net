<h2>account informatie</h2>
<div class="well row">
	<div class="forms span4">
		<form action="#" method="post" class="form-horizontal" >
			<div class="control-group">
				<label class="control-label" for="inputRegistered_at">Lid sinds:</label>
				<div class="controls">
					<input type="text" id="inputRegistered_at" placeholder="{registered_at}" value="{registered_at}" disabled="disabled"/>
				</div>
			</div>
		</form>

		<form action="{base}/users/update/?ns=controllers&amp;path=controller_path" method="post" class="form-horizontal" id="userForm">
			<input type="hidden" name="userId" value="{id}">
			<input type="hidden" name="registered_at" value="{registered_at}">
			<div class="control-group">
				<label class="control-label" for="inputFirstname">Naam:</label>
				<div class="controls">
					<input type="text" id="inputFirstname" placeholder="{firstname}" value="{firstname}" name="firstname">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputLastname">Achternaam:</label>
				<div class="controls">
					<input type="text" id="inputLastname" placeholder="{lastname}" value="{lastname}" name="lastname">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputUsername">Gebruikersnaam:</label>
				<div class="controls">
					<input type="text" id="inputUsername" placeholder="{username}" value="{username}" name="username">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputEmail">Email:</label>
				<div class="controls">
					<input type="text" id="inputEmail" placeholder="{email}" value="{email}" name="email">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputDob">Geboortedatum:</label>
				<div class="controls">
					<input type="text" id="inputDob" placeholder="{dob}" value="{dob}" name="dob">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPassword">Paswoord:</label>
				<div class="controls">
					<input type="password" id="inputPassword" placeholder="Paswoord" value="" name="password">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPasswordCheck">Paswoord check:</label>
				<div class="controls">
					<input type="password" id="inputPasswordCheck" placeholder="Paswoord check" value="" name="passwordCheck">
				</div>
			</div>


			<div class="control-group">
				<label class="control-label" for="developer"> <abbr title="Turn on special developer options"> Ontwikkelaar: </abbr> </label>
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
			Uw profiel foto word automatisch geladen vanaf <a href="http://www.gravatar.com">Gravatar</a> door middel van uw e-mail adres.
			Als U geen gravtar account heb, twijfel niet en maak er een!
		</p>
		<img src="http://www.gravatar.com/avatar/{hashed_email}?d={url_encoded}&amp;s=300" alt="Profile Picture!" class="img-polaroid"/>
	</div>
</div>
