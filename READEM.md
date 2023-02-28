# kong-obs-demo-env

## Overview
Instructions are in the doc attached only to this branch here
<https://github.com/granthbr/kong-obs-demo-env/blob/feature/jreq-valid-sql/Kong%20Prep%20Request%20Validator%20config.pdf> 

These three files are include a global config (with body params), route config (overrides the global config) and meta data (so all config is no overwritten).

This dev env is specific to mac osx:

These are the hosts names to include in your /etc/hosts file:

0.0.0.0 manager.kong.lan
0.0.0.0 api.kong.lan
0.0.0.0 portal.kong.lan
0.0.0.0 portal-api.kong.lan