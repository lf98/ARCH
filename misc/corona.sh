#!/bin/sh

#this short script obtains the latest corona virus data, selects certain parts, then writes the info to a file for use in polybar

#update info
curl https://corona-stats.online/US > ~/.cache/corona

grep "Massachusetts" ~/.cache/corona |
	sed "s/\s*//g ; s/▲//g ; s/│/;/g" |
	sed -r "s/[[:cntrl:]]\[[0-9]{1,3}m//g" |
	awk -F';' '{print "Cases in MA: " $3 "(" $9")              Deaths in MA: ☠️ " $5 " ("$7"%)" > ".config/polybar/corona_data"}'
	#awk -F';' 
