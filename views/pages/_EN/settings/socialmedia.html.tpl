<div class="tabbable">
    <ul class="nav nav-tabs">
        <li class="active"><a href="#facebook" data-toggle="tab">Facebook</a></li>
        <li><a href="#twitter" data-toggle="tab">Twitter</a></li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane active" id="facebook">
            <a href="{fb_auth_url}" class="btn btn-info btn-large">Connect to facebook!</a>
            <form class="form form-horizontal" method="post" action="#">
                <fieldset>
                    <legend>Facebook user data </legend>
                    
                    <div class="control-group">
                        <label class="control-label" for="fb-username">Facebook Username</label>
                        <div class="controls">
                            <input type="text" name="fb-username" value="{fb-username}" id="fb-username"/>
                        </div>
                    </div>
                
                   <div class="control-group">
                        <label class="control-label" for=""></label>
                        <div class="controls">
                            <input id="" name="" value="" type="text"/>
                        </div>
                   </div>
                </fieldset>
            </form>
        </div>
        <div class="tab-pane" id="twitter">
            <a href="{twitter_auth_url}" class="btn btn-info btn-large">Connect to twitter</a>
            <form class="form form-horizontal" method="post" action="#">
                <fieldset>
                    <legend>Twitter user data </legend>
                    <div class="control-group">
                        <label class="control-label" for=""></label>
                        <div class="controls">
                            <input type="text" name="" value="" id="">
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</div>
