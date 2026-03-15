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


#######################################################


echo -ne '\033c'
trap RM_HT_FOLDER SIGINT SIGQUIT SIGTSTP
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
echo -e "     |                                                                                                               ${BCyan} BETA${Yellow}    |"
sleep 0.1
echo -e "     |                                                                                                                        |"
sleep 0.1
echo -e "${Cyan}    +${Yellow}--------------------------------------------------------------------------------------------------------------------------${Cyan}+${Yellow}"
sleep 0.1
echo -e "                                     |${BRed} Online Browser + Auto OBS ${BYellow}by${BGreen} Hamza Hammouch${Cyan} powerd by${BPurple} linuxserver${Yellow} |"
sleep 0.1
echo -e "                                     ${Cyan}+${Yellow}--------------------------------------------------------${Cyan}+"
sleep 0.1

#######################################################


echo -e "${Yellow}     +${White}-------------------------------------------------------------------${Yellow}+"
echo -e "${White}     | ${Yellow} ID ${White} |                   ${BPurple}   Browser Name                       ${White}   |"
echo -e "${Yellow}     +${White}-------------------------------------------------------------------${Yellow}+"
echo -e "${White}     | ${Red}[${Yellow}01${Red}]${White} |$Green Install Chromium + Auto OBS${White}                                |"
echo -e "${White}     | ${Red}[${Yellow}02${Red}]${White} |$Green Install Firefox + Auto OBS${White}                                 |"
echo -e "${White}     | ${Red}[${Yellow}03${Red}]${White} |$Green Install Opera + Auto OBS${White}                                   |"
echo -e "${White}     | ${Red}[${Yellow}04${Red}]${White} |$Green Install Mullvad Browser + Auto OBS${White}                       |"
echo -e "${Yellow}     +${White}-------------------------------------------------------------------${Yellow}+"
echo ""
echo -e -n "$White    ${Red} [${Cyan}!Note:${Red}]$White If your choice is Chromium type $Green 1${White} not ${Red}01$White and the same principle applies to other browsers "
echo ""
echo ""
echo -e -n "$White    ${Red} [${Cyan}!${Red}]$White Type the$BRed ID$White "
read -p "of your choice : " choice

# Function to install OBS with auto-start in container
install_obs_autostart() {
    local container_name=$1
    echo -e "${Yellow}Installing OBS Studio with auto-start...${White}"
    sleep 2
    
    # Wait for container to be ready
    echo -e "${Yellow}Waiting for container to start...${White}"
    sleep 5
    
    # Install OBS, create desktop shortcut, and configure auto-start
    docker exec $container_name bash -c "
        echo '=== Updating package list ===' && \
        apt-get update -qq && \
        echo '=== Installing OBS Studio ===' && \
        apt-get install -y -qq software-properties-common && \
        add-apt-repository -y ppa:obsproject/obs-studio && \
        apt-get update -qq && \
        apt-get install -y -qq obs-studio ffmpeg xterm && \
        
        echo '=== Creating OBS desktop shortcut ===' && \
        mkdir -p /usr/share/applications && \
        cat > /usr/share/applications/obs.desktop << 'EOF'
[Desktop Entry]
Name=OBS Studio
Exec=obs
Icon=obs
Type=Application
Categories=AudioVideo;Recorder;
Terminal=false
EOF
        
        echo '=== Creating auto-start script ===' && \
        mkdir -p /config/.config/autostart && \
        cat > /config/.config/autostart/obs.desktop << 'EOF'
[Desktop Entry]
Type=Application
Name=OBS Studio
Exec=/usr/bin/obs
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
EOF
        
        echo '=== Creating startup wrapper ===' && \
        cat > /config/start-obs.sh << 'EOF'
#!/bin/bash
sleep 5
/usr/bin/obs &
EOF
        chmod +x /config/start-obs.sh
        
        echo '=== Adding to .bashrc for terminal start ===' && \
        echo 'export DISPLAY=:1' >> /config/.bashrc && \
        echo 'if [ -z \"\$OBS_STARTED\" ]; then export OBS_STARTED=1; sleep 3 && /usr/bin/obs & fi' >> /config/.bashrc
        
        echo '=== OBS Auto-Start Configuration Complete ==='
    "
    
    # Create custom startup script in container
    docker exec $container_name bash -c "
        echo '=== Modifying container startup ===' && \
        cat > /etc/services.d/obs/run << 'EOF'
#!/usr/bin/with-contenv bash
echo 'Starting OBS Studio...'
sleep 10
export DISPLAY=:1
exec s6-setuidgid abc /usr/bin/obs
EOF
        chmod +x /etc/services.d/obs/run 2>/dev/null || true
        
        # Alternative: modify init script
        mkdir -p /defaults
        cat > /defaults/autostart << 'EOF'
#!/bin/bash
/usr/bin/obs &
EOF
        chmod +x /defaults/autostart
    "
    
    echo -e "${Green}✔ OBS Studio installed with AUTO-START!${White}"
    echo -e "${Cyan}OBS will start automatically when you open the browser window${White}"
}

case $choice in
    1)
        echo "Installing Chromium with Auto OBS..."
        docker run -d \
            --name=chromium \
            --security-opt seccomp=unconfined \
            -e PUID=1000 \
            -e PGID=1000 \
            -e TZ=Etc/UTC \
            -p 3000:3000 \
            -p 3001:3001 \
            -v /chromium:/config \
            --shm-size="7gb" \
            --restart unless-stopped \
            ghcr.io/linuxserver/chromium:latest
        install_obs_autostart "chromium"
        ;;
    2)
        echo "Installing Firefox with Auto OBS..."
        docker run -d \
            --name=firefox \
            --security-opt seccomp=unconfined \
            -e PUID=1000 \
            -e PGID=1000 \
            -e TZ=Etc/UTC \
            -p 3000:3000 \
            -p 3001:3001 \
            -v /firefox:/config \
            --shm-size="7gb" \
            --restart unless-stopped \
            ghcr.io/linuxserver/firefox:latest
        install_obs_autostart "firefox"
        ;;
    3)
        echo "Installing Opera with Auto OBS..."
        docker run -d \
            --name=opera \
            --security-opt seccomp=unconfined \
            -e PUID=1000 \
            -e PGID=1000 \
            -e TZ=Etc/UTC \
            -p 3000:3000 \
            -p 3001:3001 \
            -v /opera:/config \
            --shm-size="7gb" \
            --restart unless-stopped \
            ghcr.io/linuxserver/opera:latest
        install_obs_autostart "opera"
        ;;
    4)
        echo "Installing Mullvad Browser with Auto OBS..."
        docker run -d \
            --name=mullvad-browser \
            --security-opt seccomp=unconfined \
            -e PUID=1000 \
            -e PGID=1000 \
            -e TZ=Etc/UTC \
            -p 3000:3000 \
            -p 3001:3001 \
            -v /mullvad-browser:/config \
            --shm-size="7gb" \
            --restart unless-stopped \
            ghcr.io/linuxserver/mullvad-browser:latest
        install_obs_autostart "mullvad-browser"
        ;;
    *)
        echo "Invalid choice. Please enter 1, 2, 3, or 4."
        exit 1
        ;;
esac

#######################################################

clear
echo ""
sleep 0.1
echo -e -n "$White    ${Red} [${Green} ✔ ${Red}]$White Browser + Auto OBS installation completed successfully ( •̀ ω •́ )✧"
sleep 0.1
echo ""
sleep 0.1
echo -e "${Green}    ============================================${White}"
echo -e "${Green}    Access your browser at: http://localhost:3000${White}"
echo -e "${Green}    OBS Studio will start AUTOMATICALLY!${White}"
echo -e "${Green}    ============================================${White}"
echo ""
echo -e "${Yellow}    Instructions:${White}"
echo -e "${White}    1. Open browser to ${Cyan}http://localhost:3000${White}"
echo -e "${White}    2. Wait 10-15 seconds for desktop to load${White}"
echo -e "${White}    3. OBS will start automatically${White}"
echo -e "${White}    4. If OBS doesn't appear, click the menu and find OBS Studio${White}"
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
