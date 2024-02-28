#! /bin/bash
read -sp "Introduce tu contraseña: " password
rutaArchivos=$(pwd) 
echo "Instalando la fuente:FiraCode Nerd Font"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip 
mv FiraCode.zip /tmp
cd /tmp
unzip FiraCode.zip
echo $password | sudo -S mv *.ttf /usr/share/fonts/truetype/
cd $rutaArchivos
echo "Instalando configración de i3..."
cp ./i3/config ~/.config/i3/config
cp ./i3/powermenu.sh ~/.config/i3/powermenu.sh

echo "Instalando configuración de i3status..."
cp -r ./i3status/config ~/.config/i3status/config

echo "Instalación completada: recarga el gestor de ventanas i3 con Supr+Shift+r"
