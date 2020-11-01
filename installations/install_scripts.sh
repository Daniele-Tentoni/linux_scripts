#!/bin/bash
# Reports a total number of files in a given directory.
# You can call this with "total_files $input"
function total_files {
	find $1 -type f | wc -l
}

if [ $# -gt 0 ]; then
	echo "There are some arguments"
	# while getopts 
else
	echo "Hai chiesto un'installazione completa"
fi

echo "Procedo con l'aggiunta dei repo ad apt"
sudo add-apt-repository ppa:linrunner/tlp

echo "Procedo con l'aggiornamento delle sorgenti"
sudo apt update 2> install_scripts.errors

echo "Installo nuovi package managers"
# Install a more general package manager for developers.
sudo apt install snapd

# Install a developer focused package manager.
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
-> sdkman 5.0.0+51

echo "Procedo con l'installazione dei pacchetti base di programmazione e di utilita'"
# Install the last default jdk and jre version.
sudo apt install -y default-jre default-jdk
java -version

# Install Microsoft fuckin fonts.
sudo apt install -y ttf-mscorefonts-installer

# Install the useful mattermost application.
sudo snap install -y mattermost-desktop

# Install the fuckin skype application.
#flatpak install -y skype

# Install some improvements to the de gui.
#sudo apt install gnome-tweaks

# Install from sdkman the specified gradle version.
sdk install gradle 6.7

# Install basic Scala
sdk install scala

# Install build manager for Scala
sdk install sbt

# Install the powerful IntelliJ IDE
sudo snap install intellij-idea-community --classic

# Install the weakest Eclipse IDE
sudo snap install eclipse --classic

# Set some basic configuration in git.
# git config --global --get user.name
# git config --global --get user.email
# git config --global<propertyname>"<value>"

# Install TLP fore manage battery improvements.
sudo apt install tlp tlp-rdw

# Install Powertop for battery tuning and other infos.
sudo apt install powertop
# sudo powertop-c # This may take 15 minutes to finish.

echo "Esecuzione delle installazioni terminata"

E_WC=`cat install_scripts.sh | wc -l`
if [ $E_WC -ne 0 ]; then
	# Comunico anche con l'errore che l'esito non e' del tutto positivo.
	echo "Visiona il log degli errori nel file install_scripts.errors"
	exit 1
else
	# Comunico comunque che il risultato ottenuto e' positivo.
	echo "Tutto e' andato come previsto"
	exit 0
fi
