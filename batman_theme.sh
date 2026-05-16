#!/bin/bash

# 1. Actualizar el sistema
sudo apt update

# 2. Instalar herramientas de personalización
sudo apt install -y rofi feh neofetch picom xfce4-settings

# 3. Crear carpetas de recursos si no existen
mkdir -p ~/.themes ~/.icons ~/.wallpapers

# 4. Descargar recursos (Ejemplos hipotéticos de URLs)
# Nota: Debes buscar enlaces directos a los archivos .zip o .tar.gz
# Fondo de pantalla de Batman
wget -O ~/.wallpapers/batman_bg.jpg "URL_DE_TU_IMAGEN_BATMAN"

# Tema GTK (ej: Dracula o uno negro/amarillo)
# git clone https://github.com ~/.themes/Dracula

# 5. Aplicar el fondo de pantalla
feh --bg-fill ~/.wallpapers/batman_bg.jpg

# 6. Configurar la terminal (ZSH/Oh My Zsh)
# Puedes cambiar el prompt a un logo de Batman si usas fuentes "Nerd Fonts"
echo "alias bat='neofetch --ascii_distro batman'" >> ~/.zshrc

echo "Entorno de Batman base instalado. Reinicia la sesión."
