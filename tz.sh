#!/usr/bin/env bash

timezone() {
  echo '${font BankGothic Md BT:pixelsize=30}${alignr}'${2}: $(TZ=$1 date +%H:%M)'${font}'
}

timezone Europe/Vilnius Vilnius
timezone Asia/Tehran Tehran
timezone Europe/Oslo Oslo
timezone Europe/Dublin Dublin
timezone Australia/Victoria Victoria
