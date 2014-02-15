<html>
	<head>
		<title>Rate music for musicians</title>
	</head>
	
	<body>
	<br/>
	<?php
	require_once("../util/functions.php");
	require_once("../../models/config.php");
	
	if(isset($_POST["submit"])){
		writeScore($_SESSION['song'], $_POST['rating'], $loggedInUser->displayname);
		echo "Thanks for your vote. You can hit play to listen to the next song.<br/>";
	}
	else{
		echo "Hit play to listen a song and give a rating after it finished playing. </br>";
	}
		//Load variables
		$song = loadSong("musicians/");
		$_SESSION['song'] = $song;
	?>
		<br />
		Playing: <?echo substr($song,strrpos($song,"/")+1);?><br />
		<audio controls>
		  <source src='<?php echo $song.".mp3";?>' type='audio/mpeg'>
		  Your browser does not support this audio format.
		</audio>
		
		<p>
			Did you like the song?
		</p>
		<form name='ratingform' action='' method='post'> 
			1:<input type="radio" name="rating" value="1" required>
			2:<input type="radio" name="rating" value="2">
			3:<input type="radio" name="rating" value="3">
			4:<input type="radio" name="rating" value="4">
			5:<input type="radio" name="rating" value="5">
			6:<input type="radio" name="rating" value="6">
			7:<input type="radio" name="rating" value="7">
			<br>
			<input type='submit' name='submit' value='Stem' />			
		</form>
	</body>
</html>