# kong-obs-demo-env

## Overview
Instructions are in the doc attached only to this branch here

Kong mangager is hosted at: manager.kong.lan
Username: kong_admin

Prereq: 
and environment variable set for the Kong License:
export KONG_LICENSE_DATA={"license":{"payload":{"admin_seats":"5",","version":"1"}}


These three files are include a global config (with body params), route config (overrides the global config) and meta data (so all config is no overwritten).

This dev env is specific to mac osx:

These are the hosts names to include in your /etc/hosts file:

0.0.0.0 manager.kong.lan
0.0.0.0 api.kong.lan
0.0.0.0 portal.kong.lan
0.0.0.0 portal-api.kong.lan