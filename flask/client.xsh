#!/bin/env xonsh

import requests as req
from fake_useragent import UserAgent

ua_local = UserAgent()
get_ua = ua_local.random

url=$(echo "http://localhost:5000/api/halo world")

var = req.get($(echo $url | sed -f ../main.sed), headers="User-Agent:" + get_ua).text

echo @(var) | jq .

# code by polygon
