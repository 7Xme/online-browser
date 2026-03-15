#!/bin/bash

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Reset
Reset='\e[0m'

#######################################################

clear
trap 'echo -e "\n${Red}[!] Installation interrupted by user${Reset}"; exit 1' SIGINT SIGQUIT SIGTSTP

echo ""
sleep 0.1
echo -e "${Cyan}    +${Yellow}--------------------------------------------------------------------------------------------------------------------------${Cyan}+"
sleep 0.1
echo -e "${Yellow}     |                                                                                                                        |"
sleep 0.1
echo -e "     |${Green}     ██████╗ ███╗   ██╗██╗     ██╗███╗   ██╗███████╗    ${Red}██████${Black}╗${Red} ██████${Black}╗${Red}  ██████${Black}╗${Red} ██${Black}╗${Red}    ██${Black}╗${Red}███████${Black}╗${Red}███████${Black}╗${Red}██████${Black}╗  ${Yellow}    |"
sleep 0.1
echo -e "     |${Green}    ██╔═══██╗████╗  ██║██║     ██║████╗  ██║██╔════╝    ${Red}██${Black}╔══${Red}██${Black}╗${Red}██${Black}╔══${Red}██${Black}╗${Red}██${Black}╔═══${Red}██${Black}╗${Red}██${Black}║${Red}    ██${Black}║${Red}██${Black}╔════╝${Red}██${Black}╔════╝${Red}██${Black}╔══${Red}██${Black}╗${Red}    ${Yellow} |"
sleep 0.1
echo -e "     |${Green}    ██║   ██║██╔██╗ ██║██║     ██║██╔██╗ ██║█████╗      ${Red}██████${Black}╔╝${Red}██████${Black}╔╝${Red}██${Black}║   ${Red}██${Black}║${Red}██${Black}║ ${Red}█${Black}╗ ${Red}██${Black}║${Red}███████${Black}╗${Red}█████${Black}╗  ${Red}██████${Black}╔╝    ${Yellow} |"
sleep 0.1
echo -e "     |${BGreen}    ██║   ██║██║╚██╗██║██║     ██║██║╚██╗██║██╔══╝      ${BRed}██${Black}╔══${BRed}██${Black}╗${BRed}██${Black}╔══${BRed}██${Black}╗${BRed}██${Black}║   ${Red}██${Black}║${BRed}██${Black}║${BRed}███${Black}╗${BRed}██${Black}║╚════${BRed}██${Black}║${BRed}██${Black}╔══╝  ${BRed}██${Black}╔══${BRed}██${Black}╗    ${Yellow} |"
sleep 0.1
echo -e "     |${BGreen}    ╚██████╔╝██║ ╚████║███████╗██║██║ ╚████║███████╗    ${BRed}██████${Black}╔╝${BRed}██${Black}║${BRed}  ██${Black}║╚${BRed}██████${Black}╔╝╚${BRed}███${Black}╔${BRed}███${Black}╔╝${BRed}███████${Black}║${BRed}███████${Black}╗${BRed}██${Black}║  ${BRed}██${Black}║    ${Yellow} |"
sleep 0.1
echo -e "     |${Green}     ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝    ${Black}╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚══╝╚══╝ ╚══════╝╚══════╝╚═╝  ╚═╝ ${Yellow}    |"
sleep 0.1
echo -e "     |                                                                                                               ${BCyan} LINUX${Yellow}    |"
sleep 0.1
echo -e "     |                                                                                                                        |"
sleep 0.1
echo -e "${Cyan}    +${Yellow}--------------------------------------------------------------------------------------------------------------------------${Cyan}+${Yellow}"
sleep 0.1
echo -e "                                     |${BRed} Linux Apps Container ${BYellow}by${BGreen} Hamza Hammouch${Cyan} powerd by${BPurple} Docker${Yellow} |"
sleep 0.1
echo -e "                                     ${Cyan}+${Yellow}--------------------------------------------------------${Cyan}+"
sleep 0.1

#######################################################

echo -e "${Yellow}     +${White}-------------------------------------------------------------------${Yellow}+"
echo -e "${White}     | ${Yellow} ID ${White} |                   ${BPurple}   Application Name                       ${White}   |"
echo -e "${Yellow}     +${White}-------------------------------------------------------------------${Yellow}+"
echo -e "${White}     | ${Red}[${Yellow}01${Red}]${White} |$Green Install OBS Studio (with VNC)${White}                              |"
echo -e "${White}     | ${Red}[${Yellow}02${Red}]${White} |$Green Install Firefox (Browser)${White}                                  |"
echo -e "${White}     | ${Red}[${Yellow}03${Red}]${White} |$Green Install Both (OBS + Firefox)${White}                             |"
echo -e "${White}     | ${Red}[${Yellow}04${Red}]${White} |$Green Stop & Remove All Containers${White}                             |"
echo -e "${Yellow}     +${White}-------------------------------------------------------------------${Yellow}+"
echo ""
echo -e -n "$White    ${Red} [${Cyan}!Note:${Red}]$White If your choice is OBS type $Green 1$White not ${Red}01$White and the same principle applies to other options "
echo ""
echo ""

# Check if Docker is installed
check_docker() {
    if ! command -v docker &> /dev/null; then
        echo -e "\n${Red}[!] Docker is not installed!${Reset}"
        echo -e "${Yellow}[*] Installing Docker...${Reset}"
        
        # Install Docker
        curl -fsSL https://get.docker.com -o get-docker.sh
        sudo sh get-docker.sh
        sudo usermod -aG docker $USER
        
        echo -e "${Green}[✔] Docker installed successfully!${Reset}"
        echo -e "${Yellow}[!] Please log out and log back in for changes to take effect, or run: newgrp docker${Reset}"
        
        # Try to use docker without logout
        newgrp docker << EOF
EOF
    else
        echo -e "\n${Green}[✔] Docker is already installed${Reset}"
    fi
    
    # Start Docker service if not running
    if ! sudo systemctl is-active --quiet docker; then
        sudo systemctl start docker
        echo -e "${Green}[✔] Docker service started${Reset}"
    fi
}

# Function to get external IP
get_external_ip() {
    EXTERNAL_IP=$(curl -s ifconfig.me || curl -s icanhazip.com || echo "localhost")
    echo "$EXTERNAL_IP"
}

# Install OBS Studio
install_obs() {
    echo -e "\n${Yellow}[*] Installing OBS Studio...${Reset}"
    
    # Stop existing container if exists
    sudo docker stop obs-studio 2>/dev/null
    sudo docker rm obs-studio 2>/dev/null
    
    # Run OBS Studio with noVNC (web-based VNC)
    sudo docker run -d \
        --name=obs-studio \
        --security-opt seccomp=unconfined \
        -e PUID=1000 \
        -e PGID=1000 \
        -e TZ=Etc/UTC \
        -e SUBFOLDER=/ \
        -e "TITLE=OBS Studio" \
        -p 3000:3000 \
        -p 3001:3001 \
        -v /opt/obs/config:/config \
        --shm-size="2gb" \
        --restart unless-stopped \
        ghcr.io/linuxserver/obs-studio:latest || \
        sudo docker run -d \
            --name=obs-studio \
            -p 5900:5900 \
            -p 6080:6080 \
            -v /opt/obs/config:/root/.config/obs-studio \
            --restart unless-stopped \
            josh5/obs-studio:latest
    
    if [ $? -eq 0 ]; then
        echo -e "${Green}[✔] OBS Studio container started successfully!${Reset}"
        IP=$(get_external_ip)
        echo -e "\n${Cyan}╔════════════════════════════════════════════════════════╗${Reset}"
        echo -e "${Cyan}║${Reset}  ${BGreen}OBS Studio is now running!${Reset}                            ${Cyan}║${Reset}"
        echo -e "${Cyan}║${Reset}  ${White}Access URL: ${BYellow}http://${IP}:3000${Reset}                        ${Cyan}║${Reset}"
        echo -e "${Cyan}║${Reset}  ${White}Or: ${BYellow}http://${IP}:6080${Reset} (if using alternative)          ${Cyan}║${Reset}"
        echo -e "${Cyan}╚════════════════════════════════════════════════════════╝${Reset}"
    else
        echo -e "${Red}[✘] Failed to start OBS Studio container${Reset}"
        return 1
    fi
}

# Install Firefox
install_firefox() {
    echo -e "\n${Yellow}[*] Installing Firefox...${Reset}"
    
    # Stop existing container if exists
    sudo docker stop firefox 2>/dev/null
    sudo docker rm firefox 2>/dev/null
    
    # Run Firefox
    sudo docker run -d \
        --name=firefox \
        --security-opt seccomp=unconfined \
        -e PUID=1000 \
        -e PGID=1000 \
        -e TZ=Etc/UTC \
        -p 4000:3000 \
        -p 4001:3001 \
        -v /opt/firefox/config:/config \
        --shm-size="2gb" \
        --restart unless-stopped \
        ghcr.io/linuxserver/firefox:latest
    
    if [ $? -eq 0 ]; then
        echo -e "${Green}[✔] Firefox container started successfully!${Reset}"
        IP=$(get_external_ip)
        echo -e "\n${Cyan}╔════════════════════════════════════════════════════════╗${Reset}"
        echo -e "${Cyan}║${Reset}  ${BGreen}Firefox is now running!${Reset}                               ${Cyan}║${Reset}"
        echo -e "${Cyan}║${Reset}  ${White}Access URL: ${BYellow}http://${IP}:4000${Reset}                        ${Cyan}║${Reset}"
        echo -e "${Cyan}╚════════════════════════════════════════════════════════╝${Reset}"
    else
        echo -e "${Red}[✘] Failed to start Firefox container${Reset}"
        return 1
    fi
}

# Install both
install_both() {
    install_obs
    install_firefox
    
    IP=$(get_external_ip)
    echo -e "\n${BGreen}╔════════════════════════════════════════════════════════╗${Reset}"
    echo -e "${BGreen}║${Reset}  ${BWhite}Both applications are running!${Reset}                        ${BGreen}║${Reset}"
    echo -e "${BGreen}║${Reset}  ${White}OBS Studio: ${BYellow}http://${IP}:3000${Reset}                          ${BGreen}║${Reset}"
    echo -e "${BGreen}║${Reset}  ${White}Firefox:    ${BYellow}http://${IP}:4000${Reset}                          ${BGreen}║${Reset}"
    echo -e "${BGreen}╚════════════════════════════════════════════════════════╝${Reset}"
}

# Cleanup function
cleanup() {
    echo -e "\n${Yellow}[*] Stopping and removing all containers...${Reset}"
    sudo docker stop obs-studio firefox 2>/dev/null
    sudo docker rm obs-studio firefox 2>/dev/null
    echo -e "${Green}[✔] All containers removed${Reset}"
}

# Main execution
check_docker

echo -e -n "$White    ${Red} [${Cyan}!${Red}]$White Type the$BRed ID$White of your choice : "
read choice

case $choice in
    1)
        install_obs
        ;;
    2)
        install_firefox
        ;;
    3)
        install_both
        ;;
    4)
        cleanup
        ;;
    *)
        echo -e "\n${Red}[✘] Invalid choice. Please enter 1, 2, 3, or 4.${Reset}"
        exit 1
        ;;
esac

#######################################################

echo ""
sleep 0.1
echo -e -n "$White    ${Red} [${Green} ✔ ${Red}]$White Installation completed successfully ( •̀ ω •́ )✧"
sleep 0.1
echo ""
sleep 0.1
echo ""
sleep 0.1
echo -e "    ${Red} ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${Blue}⢀⣠⣴⣾⣿⣿⣿⣶⣄⡀⠀"
sleep 0.1
echo -e "    ${Red} ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${Blue}⣀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄"
sleep 0.1
echo -e "    ${Red} ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${Blue}⢀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷"
sleep 0.1
echo -e "    ${Red} ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤${Blue}⠾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠉⠙⣿⣿⡿"
sleep 0.1
echo -e "    ${Red} ⠀⠀⠀⠀⠀⢀⣠⠶⠛⠁⠀⠀${Blue}⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣄⣠⣿⡿⠁"
sleep 0.1
echo -e "    ${Red} ⠀⠀⣀⡤⠞⠉⠀⠀⠀⠀⠀⠀${Blue}⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠀⠀"
sleep 0.1
echo -e "    ${Red} ⢀⡾⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${Blue}⠙⢿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠀⠀⠀⠀⠀"
sleep 0.1
echo -e "    ${Red} ⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⡀${Blue}⠙⢿⣿⡿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀"
sleep 0.1
echo -e "    ${Red} ⣿⠀⠀⠀⠀⠀⠀⠀⣠⣴⣾⡿⠟⢋⣤⠶⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
sleep 0.1
echo -e "    ${Red} ⠘⣧⡀⠀⢰⣿⣶⣿⠿⠛⣩⡴⠞⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
sleep 0.1
echo -e "    ${Red} ⠀⠈⠛⠦⣤⣤⣤⡤⠖⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
sleep 0.1
echo -e "    ${White}"
sleep 0.1
echo ""

# Show running containers status
echo -e "${Cyan}[*] Checking running containers...${Reset}"
sudo docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}" 2>/dev/null || echo -e "${Yellow}No containers running${Reset}"

echo -e "\n${Green}[✔] Done! You can access your applications through the browser.${Reset}"
echo -e "${Yellow}[!] Note: If running on Google Cloud Shell, use Web Preview on the specified ports${Reset}"
