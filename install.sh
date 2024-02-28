rutaArchivos=$(pwd) 
echo "Instalando la fuente:FiraCode Nerd Font"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip > /tmp/
cd /tmp/
unzip FiraCode.zip
mv *.ttf /usr/share/fonts/truetype/
cd $rutaArchivos
echo "Instalando configración de i3..."
cp ./i3/config ~/.config/i3/
cp ./i3/powermenu.sh ~/.config/i3/

echo "Instalando configuración de i3status..."
cp ./i3status/config ~/.config/i3staus/

echo "Instalación completada: recarga el gestor de ventanas i3 con Supr+Shift+r"
