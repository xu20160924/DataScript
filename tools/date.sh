#!/bin/bash

source ${SCRIPT_HOME}/env/common_setting.sh

#       Description: date
#       Author: Denial.AO
#       Date: 2020-12-02 17:36:37
#       Version: v1.o



split="-"
if [ $# -eq 2 ];then
split="$2"
fi

today()
{
td=`date +"%Y$split%m$split%d"`
echo $td
}

next_day()
{
echo `date -d next-day +"%Y$split%m$split%d"`
}

yesterday()
{
echo `date -d last-day +"%Y$split%m$split%d"`
}

anteayer()
{
  echo `date -d "2 day ago" +"%Y$split%m$split%d"`
}

case "$1" in
	"today")
		today
	;;
	"yesterday")
		yesterday
	;;
	"tomorrow")
		next_day
	;;
	"anteayer")
	  anteayer
	;;
	*)
		exit
esac
