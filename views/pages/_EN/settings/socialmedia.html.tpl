<script type="text/javascript">
    $(document).ready(function(){
        var fbJson = {fbJson};

        $.each(fbJson,function(index,value)
        {
            console.log(value);

            // Bug in realtime checkboxes.. cause there's a bug in there it wont check em
            $('input[name=' + value + ']').attr("checked","checked");
        });

    });
</script>

<div class="tabbable">
    <ul class="nav nav-tabs">
        <li class="active"><a href="#facebook" data-toggle="tab">Facebook</a></li>
        <li><a href="#twitter" data-toggle="tab">Twitter</a></li>
        <li><a href="#google" data-toggle="tab">Google</a></li>
        <li class="pull-right"><a href="#connect" data-toggle="tab">Connect</a></li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane active" id="facebook">

            <button class="btn select-all-checkboxes">Select all</button>
            <button class="btn invert-all-checkboxes">Invert selection</button>

            <form class="form" method="post" action="">
                <fieldset>
                    <legend>Facebook api information</legend>

                    <input type="hidden" name="medium" value="facebook">

                    <div class="row-fluid">
                        <div class="span3">

                            <div class="control-group">
                                <label for="appName" class="control-label">App name</label>
                                <div class="controls">
                                    <input type="text" name="appName" id="appName" value="{appName}">
                                </div>
                            </div>

                        </div>

                        <div class="span3">
                            
                            <div class="control-group">
                                <label for="appId" class="control-label">App id</label>
                                <div class="controls">
                                    <input type="text" name="appId" id="appId" value="{appId}">
                                </div>
                            </div>

                        </div>

                        <div class="span3">
                            
                            <div class="control-group">
                                <label for="appSecret" class="control-label">App secret</label>
                                <div class="controls">
                                    <input type="text" name="appSecret" id="appSecret" value="{appSecret}">
                                </div>
                            </div>

                        </div>

                        <div class="span3">

                        </div>
                    </div>
                </fieldset>

                <fieldset>

                    <legend>Allow Sour Jelly to access to following data</legend> 

                    <div class="row-fluid">

                        <div class="span3">
                            <div class="control-group">
                                <div class="controls">
                                    <label class="checkbox">
                                        <input type="checkbox" name="email" id="" > Email
                                    </label>
                                </div>
                            </div>
                            
                            <div class="control-group">
                                <div class="controls">
                                    <label class="checkbox">
                                        <input type="checkbox" name="read_friendlists" id="" > Read friendlist
                                    </label>
                                </div>
                                <div class="controls">
                                    <label class="checkbox">
                                        <input type="checkbox" name="read_insights" id="" > Read insights
                                    </label>
                                </div>
                                <div class="controls">
                                    <label class="checkbox">
                                        <input type="checkbox" name="read_mailbox" id="" > Read mailbox
                                    </label>
                                </div>
                                <div class="controls">
                                    <label class="checkbox">
                                        <input type="checkbox" name="read_requests" id="" > read Friend requests
                                    </label>
                                </div>
                                <div class="controls">
                                    <label class="checkbox">
                                        <input type="checkbox" name="read_stream" id="" > Read news feed
                                    </label>
                                </div>
                                <div class="controls">
                                    <label class="checkbox">
                                        <input type="checkbox" name="xmpp_login" id="" > Chat
                                    </label>
                                </div>
                                <div class="controls">
                                    <label class="checkbox">
                                        <input type="checkbox" name="user_online_presence" id="" > online status
                                    </label>
                                </div>
                                <div class="controls">
                                    <label class="checkbox">
                                        <input type="checkbox" name="friends_online_presence" id="" > Friends online status
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="span3">
                            <div class="control-group">
                                <div class="controls">
                                    <label class="checkbox">
                                        <input type="checkbox" name="ads_management" id="" > Adds
                                    </label>
                                </div>
                                <div class="controls">
                                    <label class="checkbox">
                                        <input type="checkbox" name="create_event" id="" > Create events
                                    </label>
                                </div>
                                <div class="controls">
                                    <label class="checkbox">
                                        <input type="checkbox" name="manage_friendlists" id="" > Manage friendlists
                                    </label>
                                </div>
                                <div class="controls">
                                    <label class="checkbox">
                                        <input type="checkbox" name="manage_notifications" id="" > Manage notifications
                                    </label>
                                </div>
                                <div class="controls">
                                    <label class="checkbox">
                                        <input type="checkbox" name="publish_actions" id="" > Publish actions
                                    </label>
                                </div>
                                <div class="controls">
                                    <label class="checkbox">
                                        <input type="checkbox" name="rsvp_event" id="" > RSVP events
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="span3">
                            <div class="control-group">
                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="publish_actions" id=""> Realtime publish actions
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_actions-music" id=""> User realtime music
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="friends_actions-music" id=""> Friends realtime music
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_actions-news" id=""> User realtime news
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="friends_actions-news" id=""> Friends realtime news
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_actions-video" id=""> User realtime videos
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="friends_actions-video" id=""> Friends realtime videos
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_games_activity" id=""> User game activities
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="friends_games_activity" id=""> Friends gane activities
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="manage_pages" id=""> Manage pages
                                    </label>
                                </div>

                            </div>
                        </div>
                        
                        <div class="span3">
                            <button type="submit" value="facebook" name="premission" class="btn btn-primary btn-large">Save Facebook settings</button>
                        </div>

                    </div>
                </fieldset>

                <fieldset>
                    <legend>User and friends data</legend>

                    <div class="row-fluid">
                        <div class="span3">
                            <div class="control-group">
                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_about_me" id="" > User about me
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_activities" id="" > User activities
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_birthday" id="" > User birthday
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_checkins" id="" > User checkins
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_education_history" id="" > User education history
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_events" id="" > User events
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_groups" id="" > User groups
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_hometown" id="" > User hometown
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_interests" id="" > User interests
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_likes" id="" > User likes
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_location" id="" > User location
                                    </label>
                                </div>

                            </div>
                        </div>
                        <div class="span3">
                            <div class="control-group">
                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_notes" id="" > User notes
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_photos" id="" > User photos
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_questions" id="" > User questions
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_relationships" id="" > User relationships
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_relationship_details" id="" > User relationship details
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_religion_politics" id="" > User religion &amp; politics
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_status" id="" > User status
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_subscriptions" id="" > User subscriptions
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_videos" id="" > User videos
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_website" id="" > User websites
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="user_work_history" id="" > User work history
                                    </label>
                                </div>

                            </div>
                        </div>
                        <div class="span3">
                            <div class="control-group">
                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend about me
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend activities
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend birthday
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend checkins
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend education history
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend events
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend groups
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend hometown
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend interests
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend likes
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend location
                                    </label>
                                </div>

                            </div>
                        </div>
                        <div class="span3">
                            <div class="control-group">
                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend notes
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend photos
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend questions
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend relationships
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend relationship details
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend religion &amp; politics
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend status
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend subscriptions
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend videos
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend websites
                                    </label>
                                </div>

                                <div class="controls">
                                    <label for="" class="checkbox">
                                        <input type="checkbox" name="" id="" > Friend work history
                                    </label>
                                </div>

                            </div>
                        </div>
                    </div>
    
                </fieldset>
            </form>

        </div>

        <!-- Twitter -->
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
