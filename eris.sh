#!/bin/bash

# Author       : k4itrun
# Github       : https://github.com/k4itrun
# Contact      : https://m.me/k4itrun
# Discord      : https://6889.fun/k4itrun
# Email        : k4itrun@6889.fun
# Date         : 11-10-2023

# If you don't know what you're doing, get out of here right now and use this with the instructions.

ERIS="ep"
VERSION="1.0"
AUTHOR="\x6b\x34\x69\x74\x72\x75\x6e"
ERIS_PATH="launch/$ERIS.py"
CONFIG_FILE="assets/counter.txt"

GREEN="\e[32m"
LGREEN="\e[1;32m"
CYAN='\e[36m'
BWHITE="\e[1;37m"
YELLOW="\e[33m"
LYELLOW="\e[93m"
BLUE="\e[34m"
BBLUE="\e[94m"
RED="\e[31m"
BGGRAY="\e[48;5;235m"
RESET="\e[0m"

SUCCESS="${YELLOW}[${BWHITE}√${YELLOW}] ${GREEN}"
ERROR="${BLUE}[${BWHITE}!${BLUE}] ${RED}"
INFO="${YELLOW}[${BWHITE}+${YELLOW}] ${LYELLOW}"
INFO2="${GREEN}[${BWHITE}•${GREEN}] ${BGGRAY}"
ASK="${GREEN}[${BWHITE}?${GREEN}] ${BBLUE}"

show_banner() {
    # echo -e "${LGREEN}      _____      _     ____  _     _     _               _               ${RESET}"
    echo -e "${GREEN}  Mihir Modhwadiya (216270307033)  ${RESET}"
    echo -e "${LGREEN}  Bhusan Joshi (21627030705050) ${RESET}"
    echo -e "${GREEN}  Soneirsinh Jadeja (216270307038) ${RESET}"
    echo -e "${LGREEN}  Aarti Rathod (216270307039) ${RESET}"
    # echo -e "${GREEN}                                ${RED}[${VERSION}]${GREEN}                            |___/  ${RESET}"
    # echo -e "${LGREEN}                             ${RED}[By ${AUTHOR}]                                ${RESET}"
    echo
}


main() {
    clear

    if command -v python3 &>/dev/null; then
        show_banner

        COUNTER_L=0
        if [ -e "$CONFIG_FILE" ]; then
            COUNTER_L=$(cat "$CONFIG_FILE")
        fi

        if [ "$COUNTER_L" -lt 3 ]; then
            # show_license

            ((COUNTER_L++))
            echo "$COUNTER_L" > "$CONFIG_FILE"
        fi

        echo -e "${SUCCESS} Clean code, starting $ERIS phisher... ${RESET}"
        #loading
        #loading
        python3 "$ERIS_PATH"
        echo
    else
        echo -e "${ERROR} Python3 is not installed on this system. Installing... ${RESET}"

        if sudo apt-get update; then
            if sudo apt-get install -y python3; then
                echo -e "${SUCCESS} Python3 installed SUCCESSfully. Waiting 3 seconds before running $ERIS... ${RESET}"
                sleep 3
                python3 "$ERIS_PATH"
            else
                echo -e "${ERROR} Could not install Python3. Please install it manually and try again. ${RESET}"
            fi
        else
            echo -e "${INFO2} Failed to update repositories. Check your internet connection and try again. ${RESET}"
        fi
    fi
}

main
