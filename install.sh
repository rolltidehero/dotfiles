#!/usr/bin/env bash
set -euo pipefail

intro() {

    echo
    echo -e "Use the corresponding number to make a selection"
    echo
    echo -e "\e[91m{1}    \e[32mMake backup of existing config"
    echo -e "\e[91m{2}    \e[32mInstall new config"
    echo -e "\e[91m{99}   \e[32mExit\e[0m"
    echo
    read -p "Selection: " menuResponse

    if [ "$menuResponse" == "99" ]
    then
        exit 1
    fi

    if [ "$menuResponse" == "1" ]
    then
        backup
    fi

    if [ "$menuResponse" == "2" ]
    then
        install
    fi
}

backup() {

    clear;

    echo
    echo -e "Which existing config would you like to backup?"
    echo
    echo -e "\e[91m{1}    \e[32mQtile"
    echo -e "\e[91m{2}    \e[32mAwesomeWM"
    echo -e "\e[91m{3}    \e[32mNeofetch"
    echo -e "\e[91m{4}    \e[32mQutebrowser"
    echo -e "\e[91m{5}    \e[32mKitty"
    echo -e "\e[91m{6}    \e[32mVimrc"
    echo -e "\e[91m{00}   \e[32mReturn to main menu"
    echo -e "\e[91m{99}   \e[32mExit\e[0m"
    echo
    read -p "Selection: " backupResponse

    # Return to Main Menu
    if [ "$backupResponse" == "00" ]
    then
        intro
    fi

    # Exit script
    if [ "$backupResponse" == "99" ]
    then
        exit 1
    fi

    # Backup existing Qtile config
    if [ "$backupResponse" == "1" ]
    then

        if [ -d "/home/$USER/.config/qtile" ]
        then
            #clear;
            echo
            echo -e "Qtile exists - Creating backup"
            mv /home/$USER/.config/qtile ~/.config/qtile.backup
            echo
            echo -e "Backup created!"
            echo -e "Returning to main menu"
            intro
        else
            echo -e "Error: Qtile directory does not exist"
            echo -e "Exiting script"
        fi

    fi

    # Backup existing AwesomeWM config
    if [ "$backupResponse" == "2" ]
    then

        if [ -d "/home/$USER/.config/awesome" ]
        then
            echo
            echo -e "Awesome exists - Creating backup"
            mv /home/$USER/.config/awesome ~/.config/awesome.backup
            echo
            echo -e "Backup successful!"
            echo -e "Returning to main menu"
            intro
        else
            echo -e "Error: Awesome directory does not exist"
            echo -e "Exiting script"
        fi
    fi

    # Backup existing Neofetch config
    if [ "$backupResponse" == "3" ]
    then

        if [ -d "/home/$USER/.config/neofetch" ]
        then
            echo
            echo -e "Neofetch exists - Creating backup"
            mv /home/$USER/.config/neofetch ~/.config/neofetch.backup
            echo
            echo -e "Backup successful!"
            echo -e "Returning to main menu"
            intro
        else
            echo -e "Error: Neofetch directory does not exist"
            echo -e "Exiting script"
        fi
    fi

    if [ "$backupResponse" == "4" ]
    then

        if [ -d "/home/$USER/.config/qutebrowser" ]
        then
            echo
            echo -e "Qutebrowser config exists - Creating backup"
            mv /home/$USER/.config/qutebrowser ~/.config/qutebrowser.backup
            echo
            echo -e "Backup successful!"
            echo -e "Returning to main menu"
            intro
        else
            echo -e "Error: Qutebrowser config.py does not exist"
            echo -e "Exiting script"
        fi
    fi

    if [ "$backupResponse" == "5" ]
    then

        if [ -d "/home/$USER/.config/kitty" ]
        then
            echo
            echo -e "Kitty exists - Creating backup"
            mv /home/$USER/.config/kitty ~/.config/kitty.backup
            echo
            echo -e "Backup successful!"
            echo -e "Returning to main menu"
            intro
        else
            echo -e "Error: Kitty directory does not exist"
            echo -e "Exiting script"
        fi
    fi

    if [ "$backupResponse" == "6" ]
    then

        if [ -f "/home/$USER/.vimrc" ]
        then
            echo
            echo -e ".vimrc exists - Creating backup"
            mv /home/$USER/.vimrc ~/.vimrc.backup
            echo
            echo -e "Backup successful!"
            echo -e "Returning to main menu"
            intro
        else
            echo -e "Error: Vimrc file does not exist"
            echo -e "Exiting script"
        fi
    fi
}

install() {

    clear;

    echo
    echo -e "Which config would you like to install?"
    echo
    echo -e "\e[91m{1}    \e[32mQtile"
    echo -e "\e[91m{2}    \e[32mAwesomeWM"
    echo -e "\e[91m{3}    \e[32mNeofetch"
    echo -e "\e[91m{4}    \e[32mQutebrowser"
    echo -e "\e[91m{5}    \e[32mKitty"
    echo -e "\e[91m{6}    \e[32mVimrc"
    echo -e "\e[91m{00}   \e[32mReturn to main menu"
    echo -e "\e[91m{99}   \e[32mExit\e[0m"
    echo
    read -p "Selection: " installResponse

    if [ "$installResponse" == "99" ]
    then
        exit 1
    fi

    if [ "$installResponse" == "00" ]
    then
        intro
    fi

    # Install Qtile config
    if [ "$installResponse" == "1" ]
    then
        cp -r qtile/ ~/.config/
        echo
        echo -e "Qtile config installed successfully!"
        echo -e "Returning to main menu"
        intro
    fi

    # Install AwesomeWM config
    if [ "$installResponse" == "2" ]
    then
        cp -r awesome/ ~/.config/

        if [ -d "/home/$USER/.config/picom" ]
        then
            mv /home/$USER/.config/picom ~/.config/picom.backup
        fi

        cp -r picom/ ~/.config/
        echo
        echo -e "AwesomeWM config installed successfully!"
        echo -e "Returning to main menu"
        intro
    fi

    # Install Neofetch config
    if [ "$installResponse" == "3" ]
    then
        cp -r neofetch/ ~/.config/
        echo
        echo -e "Neofetch config installed successfully!"
        echo -e "Returning to main menu"
        intro
    fi

    # Install Qutebrowser config
    if [ "$installResponse" == "4" ]
    then
        cp -r qutebrowser/ ~/.config
        echo
        echo -e "Qutebrowser config installed successfully!"
        echo -e "Returning to main menu"
        intro
    fi

    # Install Kitty config
    if [ "$installResponse" == "5" ]
    then
        cp kitty/ ~/.config
        echo
        echo -e "Kitty config installed successfully!"
        echo -e "Returning to main menu"
        intro
    fi

    # Install Vim config
    if [ "$installResponse" == "6" ]
    then
        cp vim/.vimrc /home/$USER/
        echo
        echo -e "Vim config installed successfully!"
        echo -e "Returning to main menu"
        intro
    fi
}

intro
