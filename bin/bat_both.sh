#!/bin/sh
b0=$(cat /sys/class/power_supply/BAT0/capacity 2>/dev/null || echo n/a)
b1=$(cat /sys/class/power_supply/BAT1/capacity 2>/dev/null || echo n/a)
case "$b0/$b1" in
  n/a/n/a) printf "bat: n/a |" ;;
  n/a/*)   printf "bat: %s%% |" "$b1" ;;
  */n/a)   printf "bat: %s%% |" "$b0" ;;
  *)       printf "bat: %s%% %s%% |" "$b0" "$b1" ;;
esac
