#!/bin/bash

# <bitbar.title>Vax Trax</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>MajorDouble</bitbar.author>
# <bitbar.author.github>your-github-username</bitbar.author.github>
# <bitbar.desc>Short description of what your plugin does.</bitbar.desc>
# <bitbar.image>http://www.hosted-somewhere/pluginimage</bitbar.image>
# <bitbar.dependencies>none</bitbar.dependencies>
# <bitbar.abouturl>http://url-to-about.com/</bitbar.abouturl>
# <bitbar.droptypes>Supported UTI's for dropping things on menu bar</droptypes.abouturl>

echo "IL Vax"
---
curl -s https://jhucoronavirus.azureedge.net/jhucoronavirus/state_vaccination_rates.json | sed -En 's/.*"Illinois","data":{"doses_admin":([0-9.]+),"raw_full_vac":([0-9.]+),"percent_full_vac":([0-9.]+),"per100k_full_val":([0-9.]+),"date":([0-9.]+).*/Total Doses: \1\nFully Vaxed: \2\nFully Vaxed percent: \3\nFully Vaxed per 100k: \4\nDate: \5/p'
