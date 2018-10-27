#!/usr/bin/env bash

places=(Europe/Vilnius Asia/Tehran Europe/Oslo Europe/Dublin Australia/Victoria)
names=(Vilnius Tehran Oslo Dublin Victoria)

n_character(){
  echo -n "$(python3 -c "print('{:<$1}'.format(\"$2\"))")"
}

echo -n '${font Roboto Mono:pixelsize=20}'
for i in ${names[@]}; do
  n_character 15 $i
done
echo '${font}'

echo -n '${font Roboto Mono:pixelsize=30}'
for i in ${places[@]}; do
  n_character 10 $(TZ=$i date +%H:%M)
done
echo '${font}'
