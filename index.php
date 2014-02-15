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
<p><b>Join our musical journey by sharing your opinion, and hear the music evolve over generations!</b></p>

<p>The world we are living in now is the product of evolution that lasted more than 2 billion years.
<br />
By natural selection and reproduction new generations arise, and mutations ensure diversity and provides the possibility for new species to be grow. Survival of the fittest is of great importance.
<br />
How do we decide what the fittest individual is?</p>

<p>In this project, the population consist of audioloops, than can mate and have kids!
<br />
Every generation, the best audioloops (parents) will recombine and produce new audioloops (kids). The kids will then contain a combination of genetic material from both parents.</p>

<p>We need your help in choosing which are the fittest individuals of our population, so that the best audioloops can reproduce and the next generation will evolve towards more likable music!</p>

<p>Please let us hear your opinion about the current generation!</p>

<p>Thanks!
<br />
<br />
<br /> 
Mike & Janne</p>
</div>";

include_once("models/footer.php");



?>