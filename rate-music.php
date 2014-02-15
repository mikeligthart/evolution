<?php

require_once("models/config.php");
if (!securePage($_SERVER['PHP_SELF'])){die();}
require_once("models/header.php");

echo "
<body>
<div id='wrapper'>
<div id='top'><div id='logo'></div></div>
<div id='content'>
<h1>Evolution</h1>
<h2>Rate music</h2>
<div id='left-nav'>";

include("left-nav.php");

echo "
</div>
<div id='main'>";

if($loggedInUser->isMusician())
{
	echo"
	<iframe src='algorithm/musicians/rate-mus.php' style='width: 90%; height: 300px'
scrolling='no' marginwidth='0' marginheight='0' frameborder='0' vspace='0' hspace='0'>
  		<p>Your browser does not support iframes. Please use a different browser.</p>
	</iframe>";
}
else
{
	echo"
	<iframe src='algorithm/nonmusicians/rate-nonmus.php' style='width: 90%; height: 300px'
scrolling='no' marginwidth='0' marginheight='0' frameborder='0' vspace='0' hspace='0'>
  		<p>Your browser does not support iframes. Please use a different browser.</p>
	</iframe>";
}


echo"
</div>";

include_once("models/footer.php");
?>