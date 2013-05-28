<script type="text/javascript">
    $(document).ready(function(){
        $(".hidden-input").css('display','none');

        $("form.icons-selector > fieldset > div.control-group > div.controls > label.checkbox > input[type=\"checkbox\"]").change(function(){
            name = $(this).attr('id');


            if($(this).is(':checked'))
                $("." + name ).parent().fadeIn();
            else
                $("." + name ).parent().fadeOut();
        });
    });
</script>

<div class="tabbable"> <!-- Only required for left/right tabs -->
    <ul class="nav nav-tabs">
        <li class="active">
            <a href="#enableIcons" data-toggle="tab">Enable icons</a>
        </li>
        <li>
            <a href="#iconsPosition" data-toggle="tab">Icons position</a>
        </li>
    </ul>

    <div class="tab-content">
        <div class="tab-pane active" id="enableIcons">
            <form action="#" method="post" class="form form-horizontal icons-selector">
                <fieldset>
                    <legend>Enable icons</legend>
                    
                    <div class="control-group">
                        <div class="controls">
                            <label for="500px" class="checkbox"><input type="checkbox" name="500px" id="500px">
                                
                                500px
                                <i class="circle-500px"></i>
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>

                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="about_me" class="checkbox"><input type="checkbox" name="about_me" id="about_me">
                                About me
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="add_this" class="checkbox"><input type="checkbox" name="add_this" id="add_this">
                                Add this
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="amazon" class="checkbox"><input type="checkbox" name="amazon" id="amazon">
                                Amazon
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="aol" class="checkbox"><input type="checkbox" name="aol" id="aol">
                                Aol
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="app_store_alt" class="checkbox"><input type="checkbox" name="app_store_alt" id="app_store_alt">
                                App store alternative
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="app_store" class="checkbox"><input type="checkbox" name="app_store" id="app_store">
                                App store
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="apple" class="checkbox"><input type="checkbox" name="apple" id="apple">
                                Apple
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="bebo" class="checkbox"><input type="checkbox" name="bebo" id="bebo">
                                Bebo
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="behance" class="checkbox"><input type="checkbox" name="behance" id="behance">
                                Behance
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="bing" class="checkbox"><input type="checkbox" name="bing" id="bing">
                                Bing
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="blip" class="checkbox"><input type="checkbox" name="blip" id="blip">
                                Blip
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="blogger" class="checkbox"><input type="checkbox" name="blogger" id="blogger">
                                Blogger
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="coroflot" class="checkbox"><input type="checkbox" name="coroflot" id="coroflot">
                                Coroflot
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="daytum" class="checkbox"><input type="checkbox" name="daytum" id="daytum">
                                Daytum
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="delicious" class="checkbox"><input type="checkbox" name="delicious" id="delicious">
                                Delicious
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="design_bump" class="checkbox"><input type="checkbox" name="design_bump" id="design_bump">
                                Design bump
                                 <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="designfloat" class="checkbox"><input type="checkbox" name="designfloat" id="designfloat">
                                Designfloat
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="deviant_art" class="checkbox"><input type="checkbox" name="deviant_art" id="deviant_art">
                                Deviant art
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="digg_alt" class="checkbox"><input type="checkbox" name="digg_alt" id="digg_alt">
                                Digg alt
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="digg" class="checkbox"><input type="checkbox" name="digg" id="digg">
                                Digg
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="dripple" class="checkbox"><input type="checkbox" name="dripple" id="dripple">
                                Dripple
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="drupal" class="checkbox"><input type="checkbox" name="drupal" id="drupal">
                                Drupal
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="ebay" class="checkbox"><input type="checkbox" name="ebay" id="ebay">
                                Ebay
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="email" class="checkbox"><input type="checkbox" name="email" id="email">
                                Email
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="ember_app" class="checkbox"><input type="checkbox" name="ember_app" id="ember_app">
                                Ember app
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="etsy" class="checkbox"><input type="checkbox" name="etsy" id="etsy">
                                Etsy
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="facebook" class="checkbox"><input type="checkbox" name="facebook" id="facebook">
                                Facebook
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="feed_burner" class="checkbox"><input type="checkbox" name="feed_burner" id="feed_burner">
                                Feed burner
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="flickr" class="checkbox"><input type="checkbox" name="flickr" id="flickr">
                                Flickr
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="foodspotting" class="checkbox"><input type="checkbox" name="foodspotting" id="foodspotting">
                                Foodspotting
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="forrst" class="checkbox"><input type="checkbox" name="forrst" id="forrst">
                                Forrst
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="foursquare" class="checkbox"><input type="checkbox" name="foursquare" id="foursquare">
                                Foursquare
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="friendsfeed" class="checkbox"><input type="checkbox" name="friendsfeed" id="friendsfeed">
                                Friendsfeed
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="friendstar" class="checkbox"><input type="checkbox" name="friendstar" id="friendstar">
                                Friendstar
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="gdgt" class="checkbox"><input type="checkbox" name="gdgt" id="gdgt">
                                Gdgt
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="github" class="checkbox"><input type="checkbox" name="github" id="github">
                                Github
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="google_buzz" class="checkbox"><input type="checkbox" name="google_buzz" id="google_buzz">
                                Google buzz
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="google_talk" class="checkbox"><input type="checkbox" name="google_talk" id="google_talk">
                                Google talk
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="gowalla_pin" class="checkbox"><input type="checkbox" name="gowalla_pin" id="gowalla_pin">
                                Gowalla pin
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="gowalla" class="checkbox"><input type="checkbox" name="gowalla" id="gowalla">
                                Gowalla
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="grooveshark" class="checkbox"><input type="checkbox" name="grooveshark" id="grooveshark">
                                Grooveshark
                                 
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="heart" class="checkbox"><input type="checkbox" name="heart" id="heart">
                                Heart
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="hyves" class="checkbox"><input type="checkbox" name="hyves" id="hyves">
                                Hyves
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="icondock" class="checkbox"><input type="checkbox" name="icondock" id="icondock">
                                Icondock
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="icq" class="checkbox"><input type="checkbox" name="icq" id="icq">
                                Icq
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="identica" class="checkbox"><input type="checkbox" name="identica" id="identica">
                                Identica
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="imessage" class="checkbox"><input type="checkbox" name="imessage" id="imessage">
                                Imessage
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="itune" class="checkbox"><input type="checkbox" name="itune" id="itune">
                                Itune
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="last.fm" class="checkbox"><input type="checkbox" name="last.fm" id="last.fm">
                                Last.fm
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="linkedin" class="checkbox"><input type="checkbox" name="linkedin" id="linkedin">
                                Linkedin
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="meetup" class="checkbox"><input type="checkbox" name="meetup" id="meetup">
                                Meetup
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="metacafe" class="checkbox"><input type="checkbox" name="metacafe" id="metacafe">
                                Metacafe
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="mixx" class="checkbox"><input type="checkbox" name="mixx" id="mixx">
                                Mixx
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="mobileme" class="checkbox"><input type="checkbox" name="mobileme" id="mobileme">
                                Mobileme
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="mr_wong" class="checkbox"><input type="checkbox" name="mr_wong" id="mr_wong">
                                Mr wong
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="msn" class="checkbox"><input type="checkbox" name="msn" id="msn">
                                Msn
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="myspace" class="checkbox"><input type="checkbox" name="myspace" id="myspace">
                                Myspace
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="newsvine" class="checkbox"><input type="checkbox" name="newsvine" id="newsvine">
                                Newsvine
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="paypal" class="checkbox"><input type="checkbox" name="paypal" id="paypal">
                                Paypal
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="photobucket" class="checkbox"><input type="checkbox" name="photobucket" id="photobucket">
                                Photobucket
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="picasa" class="checkbox"><input type="checkbox" name="picasa" id="picasa">
                                Picasa
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="pinterest" class="checkbox"><input type="checkbox" name="pinterest" id="pinterest">
                                Pinterest
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="podcast" class="checkbox"><input type="checkbox" name="podcast" id="podcast">
                                Podcast
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="posterous" class="checkbox"><input type="checkbox" name="posterous" id="posterous">
                                Posterous
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="qik" class="checkbox"><input type="checkbox" name="qik" id="qik">
                                Qik
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="quora" class="checkbox"><input type="checkbox" name="quora" id="quora">
                                Qoura
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="reddit" class="checkbox"><input type="checkbox" name="reddit" id="reddit">
                                Reddit
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="retweet" class="checkbox"><input type="checkbox" name="retweet" id="retweet">
                                Retweet
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="rss" class="checkbox"><input type="checkbox" name="rss" id="rss">
                                Rss
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="scribd" class="checkbox"><input type="checkbox" name="scribd" id="scribd">
                                Scribd
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="share_this" class="checkbox"><input type="checkbox" name="share_this" id="share_this">
                                Share this
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="skype" class="checkbox"><input type="checkbox" name="skype" id="skype">
                                Skype
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="slashdot" class="checkbox"><input type="checkbox" name="slashdot" id="slashdot">
                                Slashdot
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="slideshare" class="checkbox"><input type="checkbox" name="slideshare" id="slideshare">
                                Slideshare
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="smugmug" class="checkbox"><input type="checkbox" name="smugmug" id="smugmug">
                                Smugmug
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="sound_cloud" class="checkbox"><input type="checkbox" name="sound_cloud" id="sound_cloud">
                                Sound cloud
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="spotify" class="checkbox"><input type="checkbox" name="spotify" id="spotify">
                                Spotify
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="squidoo" class="checkbox"><input type="checkbox" name="squidoo" id="squidoo">
                                Squidoo
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="stackoverflow" class="checkbox"><input type="checkbox" name="stackoverflow" id="stackoverflow">
                                Stackoverflow
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="star" class="checkbox"><input type="checkbox" name="star" id="star">
                                Star
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="stumbleupon" class="checkbox"><input type="checkbox" name="stumbleupon" id="stumbleupon">
                                Stumbleupon
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="technorati" class="checkbox"><input type="checkbox" name="technorati" id="technorati">
                                Technorati
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="tumblr" class="checkbox"><input type="checkbox" name="tumblr" id="tumblr">
                                Tumblr
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="twitter_bird" class="checkbox"><input type="checkbox" name="twitter_bird" id="twitter_bird">
                                Twitter bird
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="twitter" class="checkbox"><input type="checkbox" name="twitter" id="twitter">
                                Twitter
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="viddler" class="checkbox"><input type="checkbox" name="viddler" id="viddler">
                                Viddler
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="vimeo" class="checkbox"><input type="checkbox" name="vimeo" id="vimeo">
                                Vimeo
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="virb" class="checkbox"><input type="checkbox" name="virb" id="virb">
                                Virb
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="w3" class="checkbox"><input type="checkbox" name="w3" id="w3">
                                W3
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="wikipedia" class="checkbox"><input type="checkbox" name="wikipedia" id="wikipedia">
                                Wikipedia
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="windows" class="checkbox"><input type="checkbox" name="windows" id="windows">
                                Windows
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="wordpress" class="checkbox"><input type="checkbox" name="wordpress" id="wordpress">
                                Wordpress
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="xing" class="checkbox"><input type="checkbox" name="xing" id="xing">
                                Xing
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="yahoo_buzz" class="checkbox"><input type="checkbox" name="yahoo_buzz" id="yahoo_buzz">
                                Yahoo buzz
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="yahoo" class="checkbox"><input type="checkbox" name="yahoo" id="yahoo">
                                Yahoo
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="yelp" class="checkbox"><input type="checkbox" name="yelp" id="yelp">
                                Yelp
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label for="youtube" class="checkbox"><input type="checkbox" name="youtube" id="youtube">
                                Youtube
                                
                                <span class="hidden-input">
                                    <input type="text" class="500px" name="500px" value="http://www.500px.com/">
                                    Link to 500px page
                                </span>
                            </label>
                        </div>
                    </div>

                </fieldset>
            </form>
        </div>
        
        <div class="tab-pane" id="iconsPosition">
            <p>Howdy, I'm in Section 2.</p>
        </div>
    </div>
</div>