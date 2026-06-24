#!/usr/bin/env bash
# ==========================================
#   🚀 JIHAN_85 - ALL IN ONE TOOL
# ==========================================

set -u

# --- ANSI COLORS ---
C=$'\033[36m'  # Cyan
G=$'\033[32m'  # Green
R=$'\033[31m'  # Red
B=$'\033[34m'  # Blue
Y=$'\033[33m'  # Yellow
W=$'\033[97m'  # White
N=$'\033[0m'   # Reset

# --- HEADER FUNCTION ---
header() {
    clear
    echo -e "${B}=====================================================${N}"
    echo -e "${Y}      🚀 cradit To JIHAN_85      ${N}"
    echo -e "${B}=====================================================${N}"
    echo ""
}

# --- PAUSE FUNCTION ---
pause() {
    echo ""
    read -p "${W}Press [Enter] to return to menu...${N}" dummy
}

# --- MAIN LOOP ---
while true; do
    header
    echo -e "${C} 1) ${W}Playit Installer ${G}(Public IP MINECRAFT)${N}"
    echo -e "${C} 2) ${W}KVM VM Installer ${G}(KVM VPS)${N}"
    echo -e "${C} 3) ${W}RDP Installer ${G}(Desktop Environment)${N}"
    echo -e "${C} 4) ${W}Tailscale Installer ${G}(VPN)${N}"
    echo -e "${C} 5) ${W}Pterodactyl Installer ${G}(Minecraft Server Panel)${N}"
    echo -e "${C} 6) ${W}NO KVM VM Installer ${G}(ONLY VPS)${N}"
    echo -e "${C} 7) ${W}Root VM Installer ${G}(ROOT VPS)${N}"
    echo -e "${R} 0) Exit${N}"
    echo ""
    echo -e "${B}=====================================================${N}"
    read -p "${Y}👉 Select an option [1-6]: ${N}" choice

    case $choice in
        1)
            echo ""
            echo -e "${Y}🔄 Running Playit Installer...${N}"
            curl -fsSL https://raw.githubusercontent.com/jihan410/server8/refs/heads/main/playit-ins | sed 's/\r$//' | bash
            pause
            ;;
        2)
            echo ""
            echo -e "${Y}💻 KVM VPS Installing...${N}"
            bash <(curl -fsSL https://raw.githubusercontent.com/jihan410/server8/refs/heads/main/vps.sh)
            pause
            ;;
        3)
            echo ""
            echo -e "${Y}🖥️  Installing RDP...${N}"
            curl -fsSL https://raw.githubusercontent.com/jihan410/server8/refs/heads/main/rdp_installer.sh | sed 's/\r$//' | bash
            pause
            ;;
        4)
            echo ""
            echo -e "${Y}🌐 Installing Tailscale VPN...${N}"
            curl -fsSL https://tailscale.com/install.sh | sh
            pause
            ;;
        5)
            echo ""
            echo -e "${Y}🖥️  Installing Pterodactyl...${N}"
            bash <(curl -s https://pterodactyl-installer.se)
            pause
            ;;
        6)
            echo ""
            echo -e "${Y}🖥️  Installing NO KVM VPS...${N}"
            bash <(curl -s https://pterodactyl-installer.se)
            pause
            ;;
        7)
            echo ""
            echo -e "${Y}🖥️  Installing ROOT VPS...${N}"
            bash <(curl -s https://pterodactyl-installer.se)
            pause
            ;;
        0)
            echo ""
            echo -e "${G}👋 Exiting... Thanks for using!${N}"
            exit 0
            ;;
        *)
            echo ""
            echo -e "${R}❌ Invalid Option! Please select between 1-6.${N}"
            sleep 2
            ;;
    esac
done
EOF
