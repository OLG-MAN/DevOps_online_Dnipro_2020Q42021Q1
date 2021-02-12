#!/bin/bash

#OPTIONS

optionAll() {
    printf "IP scan is started..."

    # List of ip subnets
    subnet_list=`ip -4 a | grep inet | cut -f1 -d / | awk '{print $2}' | cut -f1,2,3 -d .`

    # Cycle for separating each sebnet form subnet list
    for separate_subnet in $subnet_list; do

        # Checking if subnet is localhost subnet (127.0.0) then skip cycle iteration 
        if [ "${separate_subnet}" = "127.0.0" ]; then
            continue
        fi
        printf "\n\n\tIP subnet: ${separate_subnet}.0/24 \n"

        # Cycle that go through each subnet (for instance 192.168.0.0/24)
        for range in {1..254}; do

            # Write separate ip to the variable
            separate_ip=$separate_subnet.$range
            
            # Check if ip address is reachable then print it and its host name
            if timeout 0.05 ping -c 1 $separate_ip > /dev/null; then
                host_name=`host "${separate_ip}"`
                separateOutput

                # Print results 
                printf ">>> IP address:\t ${separate_ip}\n"
                printf ">>> Host name:\t ${host_name}\n"
                separateOutput
            fi
        done
    done
    printf "\nIP scan is finished!\n\n"
}


optionTarget() {
    printf "\nScan ports started...\n\n"
    separateOutput
    sudo nmap -sT -O localhost
    separateOutput
    printf "\nScan ports is finished!\n"
}


optionHelp() {
cat <<EOF
OPTIONS
    --all
        displays the IP addresses and symbolic names of all hosts in the current subnet 
    --target
        displays a list of open system TCP ports.

EOF
}


separateOutput() {
    printf '#%.0s' {1..50}
    printf '\n'
}


#MAIN

if [[ -z "${1}"  ||  "${1}" = --help ]]; then
    optionHelp
elif [[ "${1}" = --all ]]; then
    optionAll
elif [[ "${1}" = --target ]]; then
    optionTarget
else
    optionHelp
fi