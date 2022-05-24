clear
echo "Thank you for Downloading Posy's Linux cursors!"
echo "Don't forget to install gnome-tweaks!"
echo "it is done with:"
echo "sudo apt install gnome-tweaks"
sleep 1
echo "script will proceed shortly...(5s)"
sleep 5
clear
echo "setting permissions for installatoion..."
sudo chmod a+w /usr/share/icons
echo "Done"
sleep 1
clear
PS3='Please enter your choice: '
options=("Install Posy-White" "Install Posy-White-Mono" "Install Posy-Black" "Install Posy-Black-Mono" "Install all packs" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Install Posy-White")
            echo "Installing Posy-White..."
            cp -R ./Posy-White /usr/share/icons
            echo "Installation completed!"
            sleep 1
            echo "Resetting permissions..."
            sudo chmod a-w /usr/share/icons
            clear
            echo "Click on 'Appearance tab in the opened window, and select your newly installed set of cursors in the drop-down menu across 'cursors' marking, after you're done, close the window and script will finish automatically"
            gnome-tweaks
            clear
            break
            ;;
        "Install Posy-White-Mono")
            echo "Installing Posy-White-Mono..."
            cp -R ./Posy-White-Mono /usr/share/icons
            echo "Installation completed!"
            sleep 1
            echo "Resetting permissions..."
            sudo chmod a-w /usr/share/icons
            clear
            echo "Click on 'Appearance tab in the opened window, and select your newly installed set of cursors in the drop-down menu across 'cursors' marking, after you're done, close the window and script will finish automatically"
            gnome-tweaks
            clear
            break
            ;;
        "Install Posy-Black")
            echo "Installing Posy-Black..."
            cp -R ./Posy-Black /usr/share/icons
            echo "Installation completed!"
            sleep 1
            echo "Resetting permissions..."
            sudo chmod a-w /usr/share/icons
            clear
            echo "Click on 'Appearance tab in the opened window, and select your newly installed set of cursors in the drop-down menu across 'cursors' marking, after you're done, close the window and script will finish automatically"
            gnome-tweaks
            clear
            break
            ;;
        "Install Posy-Black-Mono")
            echo "Installing Posy-Black-Mono..."
            cp -R ./Posy-Black-Mono /usr/share/icons
            echo "Installation completed!"
            sleep 1
            echo "Resetting permissions..."
            sudo chmod a-w /usr/share/icons
            clear
            echo "Click on 'Appearance tab in the opened window, and select your newly installed set of cursors in the drop-down menu across 'cursors' marking, after you're done, close the window and script will finish automatically"
            gnome-tweaks
            clear
            break
            ;;
        "Install all packs")
            echo "Installing Posy-White (1/4)"
            cp -R ./Posy-White /usr/share/icons
            echo "Installing Posy-White-Mono (2/4)"
            cp -R ./Posy-White-Mono /usr/share/icons
            echo "Installing Posy-Black (3/4)"
            cp -R ./Posy-Black /usr/share/icons
            echo "Installing Posy-Black-Mono (4/4)"
            cp -R ./Posy-White-Mono /usr/share/icons
            echo "Installation completed!"
            sleep 1
            echo "Resetting permissions..."
            sudo chmod a-w /usr/share/icons
            clear
            echo "Click on 'Appearance tab in the opened window, and select your desired set of cursors in the drop-down menu across 'cursors' marking, after you're done, close the window and script will finish automatically"
            gnome-tweaks
            clear
            break
            ;;
        "Quit")
            echo "Resetting permissions..."
            sudo chmod a-w /usr/share/icons
            sleep 1
            echo "ending script"
            sleep 1
            clear
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
