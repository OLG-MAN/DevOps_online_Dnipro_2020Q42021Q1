#!/bin/bash

# OPTIONS

most_request_from_IP() {
    separate_Output
    awk '{print "\t" $1}' $1 | sort | uniq -c | sort -rh | head -1
}


most_requested_page() {
    separate_Output
    awk '{print "- " $9 " - " $7}' $1 | sort | uniq -c | sort -gr | head -20
}


requests_count_from_IP() {
    separate_Output
    if [ -z "$2" ]; then
        awk '{print $1}' $1 | sort | uniq -c | sort -h
    else
        awk '{print $1}' $1 | grep $2 | wc -l
    fi  
}


request_to_none_existent_page() {
    separate_Output
    awk '{ print "\t" $1 " (" $14 ")" " - " $7 " - " $9}' $1 | grep 404 | sort | uniq
}


request_count_per_hour() {
    date=`awk '{print $4}' logs.txt | cut -f2 -d "[" | cut -f1 -d: |uniq`
    count_point=0
    time_line=""
    if [ "$2" != "--all" ]; then
        for i in "$date"; do
            for j in {00..23}; do
                requests_count=`grep "$i:$j" $1 | wc -l`
                save_time="$i:$j"
                if [ $requests_count -gt $count_point ]; then
                    count_point=$[ requests_count ]
                    time_line=$save_time
                fi
            done
        done
        separate_Output
        printf "\t $time_line - $count_point requests \n"
    else
        separate_Output
        for i in "$date"; do
            for j in {00..23}; do
                requests_count=`grep "$i:$j" $1 | wc -l`
                save_time="$i:$j"
                if [ $requests_count -gt $count_point ]; then
                    printf "\t $save_time - $requests_count requests \n"
                fi
            done
        done
    fi
}


request_from_bots() {
    separate_Output
    awk '{print "(" $1 ") - "  $14 " - " $9}' $1 | grep -i bot | sort | uniq -c | sort -h
}


separate_Output() {
    printf '#%.0s' {1..50}
    printf '\n'
}


option_Help() {
cat <<EOF
OPTIONS
    --mrip [LOG FILE]
        Display from which IP address there were most requests and count requests.
    --mrpage [LOG FILE]
        Display requests count, status code, and URL of most requested pages.
    --rcip [LOG FILE] [IP]
        Display IP addresses from which there were requests and count it.
        If [IP] is defined count requests from that IP.
    --npage [LOG FILE]      
       Display URL and status code of reqouest to none-existent pages.
    --dreq [LOG FILE] [--all]
        Display date, time, when there were most requests to site and count requests.
        If parametr [--all] is defined, display all date, time where there were requests to site and count requests
    --bots [LOG FILE]
        Display count, IP addresses, and status code requests from bots to site.
EOF
}

# MAIN

case "$1" in 
    --mrip)     [ -n "$2" ] && most_request_from_IP $2 || option_Help ;;
    --mrpage)    [ -n "$2" ] && most_requested_page $2 || option_Help ;;
    --rcip)   [ -n "$2" ] && requests_count_from_IP $2 $3 || option_Help;;
    --npage)    [ -n "$2" ] && request_to_none_existent_page $2 || option_Help ;;
    --dreq)     [ -n "$2" ] && request_count_per_hour $2 $3 || option_Help ;;
    --bots)     [ -n "$2" ] && request_from_bots $2 || option_Help;;
    --help)     option_Help ;;
    *)          option_Help ;;
esac
