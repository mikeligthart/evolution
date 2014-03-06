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
		<h2>Welkom to the Evolution of Music</h2>
		<div id='left-nav'>";
			include("left-nav.php");

echo "
</div>
<div id='main'>
<br /><br />
<p><b>Join our musical journey by sharing your opinion, and hear the music evolve over generations!</b></p>

<p>The world we are living in now is the product of evolution that lasted more than 2 billion years.
<br />
By natural selection and reproduction new generations arise. 
<br />
Mutations ensure diversity and provide the possibility for new species to be grow. 
<br />
Survival of the fittest is of great importance. But how do we decide who the fittest individual are?<br /></p>

<p>In this project, that is based on the <a href="http://http://darwintunes.org/">DarwinTunes project</a>, the population consist of audioloops.
<br />
These audioloops can recombine (mate) and have kids!
<br />
Every generation, the best audioloops (parents) will recombine and produce new audioloops (kids).
<br />
These kids will contain a combination of genetic material from both parents and they will be part of the next generation.
<br />
</p>

<p>We need your help in choosing who are the fittest individuals of our population, 
<br>
so that the best audioloops can reproduce and the next generation will evolve towards better sounding music!</p>
<p>Please let us hear your opinion about the current generation!</p>

<p>Thanks!
<br />
Mike & Janne</p>
</div>";

include_once("models/footer.php");



?>
