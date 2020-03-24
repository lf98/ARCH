#!/bin/sh


#I based this off of Luke Smith's video
#I am not very original


#update info
curl https://corona-stats.online/US > ~/.cache/corona

grep "Massachusetts" ~/.cache/corona |
	sed "s/\s*//g ; s/▲//g ; s/│/;/g" |
	sed -r "s/[[:cntrl:]]\[[0-9]{1,3}m//g" |
	awk -F';' '{print "Cases in MA: " $3 "(" $9")              Deaths in MA: ☠️ " $5 " ("$7"%)" > ".config/polybar/corona_data"}'
	#awk -F';' 
