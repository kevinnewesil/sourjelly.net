<div class="tabbable">
    <ul class="nav nav-tabs">
        <li class="active"><a href="#facebook" data-toggle="tab">Facebook</a></li>
        <li><a href="#twitter" data-toggle="tab">Twitter</a></li>
        <li><a href="#google" data-toggle="tab">Google</a></li>
        <li class="pull-right"><a href="#connect" data-toggle="tab">Connect</a></li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane active" id="facebook">
            <form class="form form-horizontal" method="post" action="#">
                <fieldset>
                    <legend>Facebook user data </legend>
                    
                </fieldset>
            </form>
        </div>
        <div class="tab-pane" id="twitter">
            <form class="form form-horizontal" method="post" action="#">
                <fieldset>
                    <legend>Twitter user data </legend>
                    
                </fieldset>
            </form>
        </div>
        <div class="tab-pane" id="google">
            <form class="form form-horizontal" method="post" action="#">
                <fieldset>
                    <legend>Client data</legend>

                    <div class="control-group">
                        <label class="control-label" for="gmailAddress">E-mail address</label>
                        <div class="controls">
                            <input type="text" name="gmailAddress" value="{gmailAddress}" id="gmailAddress" placeholder="Gmail account">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="calendarId">calendar ids</label>
                        <div class="controls">
                            <input type="text" name="calendarId" value="{calendarId}" id="calendarId" placeholder="Google calendar ids">
                        </div>
                    </div>

                </fieldset>
            </form>
        </div>

        <div class="tab-pane" id="connect">
            <ul class="unstyled">
                <li><a href="#" class="btn btn-facebook">Connect to Facebook</a>
                <li><a href="#" class="btn btn-twitter">Connect to Twitter</a></li>
                <li><a href="#" class="btn btn-google">Connect to Google</a></li>
                <li><a href="#" class="btn btn-sourjelly">Connect to Sourjelly</a></li></li>
            </ul>
        </div>
    </div>
</div>
