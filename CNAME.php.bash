#!/bin/bash

host=localhost
port=8090

index_html=$(
cat << EOF
<h1 align="center">
  Example sed
</h1></div>

<p align="left">
  code by polygon
<br><br>
example penggunaan sed
<br>
sed -f main.sed
<br>

untuk mengakses sebuah file
<br>
sed -e '<substion>'
<br>example s/[foo]/: foo/g<br>
<br><br>
<br>terimkasi telah berkunjung<br>
EOF
)

function animations()
{
     local loop=false

         fr="sSeErRvVeErR oOnNlLiInNeE"

      until ${loop} :; do {
         for((i=0; i<${fr#}; i++)); do {
                printf "\r${fr:$i:0}"
           sleep 0.099s
         }
            done
                  }
            clear; done
}

function server_kill()
{
     local php

      (
        { ( killall php ) }
       )
     eval "echo '[**] server death'"
}

unity=${@:2:15}

case $1 in
           kill)(
               {
                    (server_kill)
                status=$?
               }
                )               ;;
            set)shift; (
                 {
                      case $2 in
                                 debug)if [[ -z "$3* ]]; then {
                                            echo " [**] input do not empety"
                                         (exit 127)
                                       elif [[ "$3" == "on" ]]; then (
                                            echo "$index_html" > index.html
                                           )
                                         elif [[ "$3" == "off" ]]; then
                           
