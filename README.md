# kong-local-env-giga

## Overview
Instructions are in the doc attached only to this branch here

Kong mangager is hosted at: manager.kong.lan

``Username: kong_admin``

Password


###Prereq: 
Set the environment variable set for the Kong License:

`` export KONG_LICENSE_DATA={"license":{"payload":{"admin_seats":"5",","version":"1"}} ``

###Environment
This dev env is specific to mac osx:

####Local Settings

These are the hosts names to include in your /etc/hosts file on your mac:

`` 0.0.0.0 manager.kong.lan `` 

`` 0.0.0.0 api.kong.lan ``

``0.0.0.0 portal.kong.lan ``

`` 0.0.0.0 portal-api.kong.lan ``

###Script instructions: 
Before running the Docker Compose up command, run the certificates script.

It will create a directory named 'certs' and populate the self signed certs to enbable the communication between the Kong GW Control Plane and the Data Plane. 

To confirm that the connection is valid after CP and DP containers are running, there will be a log message in both containers similar to this:

``sent PONG packet back to peer``

####Create services, routes, plugins, and consumers
run the ``kong_setup_and_test.sh`` script to create some randomized services, routes, and consumers. 

``./kong_setup_and_test.sh create``

Confirm the services exists in the Kong Manager at http://manager.kong.lan:8002

Next, run the test section of the script:

``./kong_setup_and_test.sh test``

Take a look at the vitals to be sure. 

If you want to clean up run

``./kong_setup_and_test.sh delete``

