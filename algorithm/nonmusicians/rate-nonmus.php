<html>
	<head>
		<title>Rate music for nonmusicians</title>
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
		$song = loadSong("nonmusicians/");
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
<table> 
<tr align='center'>
<td>Not at all</td>
<td>1</td>
<td>2</td>
<td>3</td>
<td>4</td>
<td>5</td>
<td>6</td>
<td>7</td>
<td>Very much</td>
</tr>
<tr>
<td></td>
<td><input type="radio" name="rating" value="1" required></td>
<td><input type="radio" name="rating" value="2"></td>
<td><input type="radio" name="rating" value="3"></td>
<td><input type="radio" name="rating" value="4"></td>
<td><input type="radio" name="rating" value="5"></td>
<td><input type="radio" name="rating" value="6"></td>
<td><input type="radio" name="rating" value="7"></td>
<td></td>
</tr>
</table>
<input type='submit' name='submit' value='Vote'/>
</form>
	</body>
</html>
