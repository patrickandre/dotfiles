#!/bin/bash
#
# Author: Wiebe Cazemier (wiebe@halfgaar.net)
#
# Template bash script, for when you need something overengineerd :)
 
# Hack prevention
PATH="/sbin:/usr/sbin:/bin:/usr/bin"
 
# Error codes
wrong_params=5
interrupted=99
default_error=1
 
# Function to echo in color. Don't supply color for normal color.
echo_color()
{
  message="$1"
  color="$2"
 
  red_begin="\033[01;31m"
  green_begin="\033[01;32m"
  yellow_begin="\033[01;33m"
  color_end="\033[00m"
 
  # Set color to normal when there is no color
  [ ! "$color" ] && color_begin="$color_end"
 
  if [ "$color" == "red" ]; then
    color_begin="$red_begin"
  fi
 
  if [ "$color" == "green" ]; then
    color_begin="$green_begin"
  fi
 
  if [ "$color" == "yellow" ]; then
    color_begin="$yellow_begin"
  fi
 
  echo -e "${color_begin}${message}${color_end}"
}
 
end()
{
  message="$1"
  exit_status="$2"
 
  if [ -z "$exit_status" ]; then
    exit_status="0"
  fi
 
  if [ ! "$exit_status" -eq "0" ]; then
    echo_color "$message" "red"
  else
    echo_color "$message" "green"
  fi
 
  if [ "$exit_status" -eq "$wrong_params" ]; then
    dohelp
  fi
 
  exit $exit_status
}
 
# Define function to call when SIGTERM is received
trap "end 'Interrupted' $interrupted" 1 2 3 15
 
dohelp()
{
  echo ""
  echo "Example script"
  echo ""
  echo "help = todo"
 
  # Exit because you don't want the script to do anything after displaying help
  exit 
}
 
 
while [ -n "$*" ]; do
  flag=$1
  value=$2
 
  case "$flag" in
    "--option1")
      option1=$value
      shift
    ;;
    "--help")
      dohelp
    ;;
    "--")
      break
    ;;
    *)
      end "unknown option $flag. Type --help" "$wrong_params"
    ;;
  esac
 
  shift
done
 
if [ -z "$option1" ]; then
  end "option1 not given" $wrong_params
fi