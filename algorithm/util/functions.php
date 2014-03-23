<?php
function writeScore($song, $fitness, $user){
	$file=fopen($song.".fitness","a") or die ("Can't open ".$song);
	fwrite($file,$fitness." ".$user.PHP_EOL);
	fclose($file);
}

function loadSong($pathToDir){
	$songs = glob($pathToDir.'*.pending');
	$leastRatings = intval(exec("wc -l '".substr($songs[0],0,strrpos($songs[0],".")).".fitness'"));
	$returnSong =  $songs[0];
	foreach ($songs as $song){
		$totalLines = intval(exec("wc -l '".substr($song,0,strrpos($song,".")).".fitness'"));
		if ($totalLines < $leastRatings){			
			$leastRatings = $totalLines;
			$returnSong = $song;
		}
	}

	return substr($returnSong,0,strrpos($returnSong,"."));
}

/*
function loadSong($pathToDir){
	$songs = glob($pathToDir.'*.pending');
	$song =  $songs[rand(0,count($songs)-1)];
	return substr($song,0,strrpos($song,"."));
}
*/
?>
