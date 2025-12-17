#!/usr/bin/env python3

from datetime import datetime
from zoneinfo import ZoneInfo

timezones = {
  "Vilnius": "Europe/Vilnius",
  "Tehran": "Asia/Tehran",
  "Oslo": "Europe/Oslo",
  "Dublin": "Europe/Dublin",
  "Victoria": "Australia/Victoria",
}

def n_characters(num, text):
    print(f"{text:<{num}}", end="")

print('${font Roboto Mono:pixelsize=20}', end="")
for i in timezones.keys():
    n_characters(15, i)
print('${font}')

print('${font Roboto Mono:pixelsize=30}', end="")
now = datetime.now()
for i in timezones.values():
  n_characters(10, now.astimezone(ZoneInfo(i)).strftime("%H:%M"))
print('${font}')
