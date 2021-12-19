#!/bin/env xonsh

import request as req
from fake_useragent import UserAgent

ua_local = UserAgent()
get_ua = ua_local.random

url=$(echo "http://localhost:5000/api/halo world" | sed -f main.sed)

var = req.get($(echo $url | sed ../main.sed)).text

echo @(var) | jq .

# code by polygon
