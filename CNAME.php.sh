#!/bin/bash

source desk

host=localhost #local host
port=8090 #port
title="Code by polygon"
content=main.sed

# content main.sed

# gua ngoding nya make termux 😎
# ngerecode ya 😎
# mau ngerecode apanya ni cuma example 😎👎

: '
      author      : polygon
      code-editor : termux
      Team        : Helixs-Crew & COINTER
   '

# page server
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

usage(){
cat << __EOF__

usage :/ bash CNAME.php.bash open

______________________________________________
kill_server -> mematikan server lokal
open_server -> menyalakan server lokal
open -> membuka menu
open_server_uri -> untuk membuka server
_______________________________________________
open_server usage

|==============================|
|         debug mode           |
|                              |
|on -> untuk melihat debug     |
|off -> tanpa  debug           |
•==============================•

------------------------------------------
                me team
              HELIXS-CREW
                COINTER
------------------------------------------
__EOF__
}
function animations()
{
     local loop=false

         fr="SERVER IS ONLINE  "

      until ${loop} :; do {
         for((i=0; i<${#fr}; i++)); do {
                printf "\r${fr:0:$i}"
           sleep 0.099s
         }
            done
                  }
            sleep 0.1;clear; done
}

function server_kill()
{
     local php

      (
        { ( killall php ) }
       )
     eval "echo '[**] server death'"
        exit $?
}

unity=${@:2:15}

    function main(){
        clear
          local desk #local desk

          : ' gtk.input lib desk'

          input=$(gtk.input put/box "$title" "masukan text url anda contoh : http://localhost:8080/?api=halo world" --stdout)

             clear; if [[ -z "$input" ]]; then {
                           gtk.input printx "code by polygon" "[**] input not found or empety"
                              clear; exit 127
                           }
                     fi

                       (
                     {
                           scrap=$(echo "$input" | sed -f main.sed)

                         (gtk.input printx "$title" "$scrap")
                             clear
                                exit $?
                       }
                     )
                    }

case $1 in
           kill_server)(
               {
                    (server_kill)
                status=$?
               }
                )               ;;
            open_server)(
                 {
                      case $2 in
                                 debug)if [[ -z "$3" ]]; then {
                                            echo " [**] input do not empety"
                                         (exit 127)
                                        }
                                       elif [[ "$3" == "on" ]]; then (
                                            echo "$index_html" > index.html

                                               {
                                                  php -S $host:$port index.html
                                               }

                                                  except=$?
                                               if [[ $except == "1" ]]; then (
                                                    echo "[**] Server sudah ada"
                                                     exit $?
                                               )
                                             elif [[ $except == "127" ]]; then (
                                                echo "[**] SERVER ERROR"
                                                 exit $?
                                             )
                                            fi
                                           )
                                         elif [[ "$3" == "off" ]]; then (
                                                     {
                                                        php -S $host:$port index.html
                                                     } 2>/dev/null 1>/dev/null &

                                                  echo
                                                       execept=$?

                                                       if [[ ${execept} == "1" ]]; then {
                                                             echo "[**] server sudah aktif"
                                                               exit ${?}
                                                             }
                                                        elif [[ ${execept} == "127" ]]; then (
                                                                  echo "[**] Error"
                                                                   exit $?
                                                        )
                                                      else : \

                                                       shift; (animations)
                                                    fi
                                         )
                                          else
                                              echo "[**] argument invalid"
                                           fi
                                             ;;
                                         *)shift; (
                                                exit 127
                                         ) ;;
                                       esac
                                     }
                                  )
                                            ;;
                     open)(main) ;;
                     open_server_uri)(
                        xdg-open --view http://${host}:${port}
                     ) ;;
                                *)shift; (
                                  { (usage) }
                                        exit 127
                                ) ;;

                                *)(
                                    { (usage) }
                                        exit 127
                                ) ;;
                                     esac
# code by polygon
# apa kerl kalo ada masalah pm say kerl : 6285731184377

# enjoy
