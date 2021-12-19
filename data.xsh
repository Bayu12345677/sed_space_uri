#!/bin/env xonsh

import sys, os

var = "halo world*

echo @(var) | sed -f main.sed
