<?php
/*
UserCake Version: 2.0.2
http://usercake.com
*/

require_once("models/config.php");
if (!securePage($_SERVER['PHP_SELF'])){die();}
require_once("models/header.php");

echo "
<body>
<div id='wrapper'>
<div id='top'><div id='logo'></div></div>
<div id='content'>
<h1>Evolution</h1>
<h2>Account</h2>
<div id='left-nav'>";

include("left-nav.php");

$numberOfRatings = $loggedInUser->getNumberOfRatings();
if ($numberOfRatings <= 1){
	echo "
	</div>
	<div id='main'>
	Hey, $loggedInUser->displayname. Click in the left menu on 'Rate Music!' to start.
	</div>";
}
else{
	echo "
	</div>
	<div id='main'>
	Hey, $loggedInUser->displayname. Click in the left menu on 'Rate Music!' to continue. You have been a rater since " . date("M d, Y", $loggedInUser->signupTimeStamp())." and you have rated $numberOfRatings songs.
	</div>";
}

include_once("models/footer.php");
?>
