#!/bin/env xonsh

import requests as req
from fake_useragent import UserAgent

ua_local = UserAgent()
get_ua = ua_local.random

url = "http://localhost:5000/api/halo world"

head={
        "User-Agent": get_ua
}

var = req.get($(echo @(url) | sed -f ../main.sed), headers=head).text

echo @(var) | jq .

# code by polygon
