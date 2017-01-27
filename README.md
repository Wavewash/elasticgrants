# elasticgrants
Use Elastic Search to dig through the Grants.gov database

First get a fresh data dump from grants.gov
http://www.grants.gov/web/grants/xml-extract.html

Then you'll want to set up a docker instance with ElasticSearch and Kibana
This image did the trick for me:
https://hub.docker.com/r/nshou/elasticsearch-kibana/

Edit the mapping.sh file so it points to your elastic search instance.
Line 1 and 2 contain the curl commands you'll want to change.
You'll need to then set it to be executable and run it:
./mapping.sh

Then you'll want to run the load script:
php load.php

It takes a bit to load but as it's loading you can examine the index it creates.

Enjoy!
