<?php
require __DIR__ . '/vendor/autoload.php';

//$inputf = 'GrantsDBExtract20161017v2.xml';
//$inputhost = '192.168.99.100:9200';
//$inputIndex = 'grantsdedupedwdates';

if (count($argv) != 4 )
{
	echo "incorrect number of parameters \n";
	echo "use: php load.php [elasticsearch ip] [grantsxml] [index] \n";
	echo "example: php load.php 192.168.99.100:9200 GrantsDBExtract20161017v2.xml grantsdedupedwdates \n";
die;	
}

$keysarray = [];
$inputhost = $argv[1];
$inputf = $argv[2];
$inputIndex = $argv[3];



$hosts = [$inputhost];
$client = Elasticsearch\ClientBuilder::create()->setHosts($hosts)->build();



function parseNodesNamed($nodenamed)
{
	global $keysarray, $inputf, $client, $inputIndex;

	$z = new XMLReader;
	$z->open($inputf);

	$doc = new DOMDocument;

	// move to the first <product /> node
	while ($z->read() && $z->name !== $nodenamed);

	$id = 0;

	// now that we're at the right depth, hop to the next <product/> until the end of the tree
	while ($z->name === $nodenamed)
	{
		$params = ['body' => []];

	    $grant = simplexml_import_dom($doc->importNode($z->expand(), true));
	    foreach ($grant as $key => $value) {
			
			$params['body'][] = [
		        'index' => [
		            '_index' => $inputIndex,
		            '_type' => $z->name,
		            '_id' => (string) $grant->OpportunityID
		        ]
		    ];
	
			$params['body'][] = $grant;

			if ($id % 500 == 0)
			{
				printf("*");
			}
			
			// Every 1000 documents stop and send the bulk request
			if ($id % 10000 == 0) {
			    $responses = $client->bulk($params);
			    var_dump($responses);
			    echo "\nsubmitted " . $id . "\n";
			    // erase the old bulk request
			    $params = ['body' => []];

			    // unset the bulk response when you are done to save memory
			    unset($responses);
			}
			
			



			$id++;
		}

		// Send the last batch if it exists
		
		if (!empty($params['body'])) {
		    $responses = $client->bulk($params);
		}
		

	    // go to next <product />
	    $z->next($nodenamed);
	}
	$z->close();
}

parseNodesNamed("OpportunitySynopsisDetail_1_0");
parseNodesNamed	("OpportunityForecastDetail_1_0");
echo "done.";
