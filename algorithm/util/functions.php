<?php
function writeScore($song, $fitness, $user){
	$file=fopen($song.".fitness","a") or die ("Can't open ".$song);
	fwrite($file,$fitness." ".$user.PHP_EOL);
	fclose($file);
}

function loadSong($pathToDir){
	$songs = glob($pathToDir.'*.pending');
	$song =  $songs[rand(0,count($songs)-1)];
	return substr($song,0,strrpos($song,"."));
}
?>