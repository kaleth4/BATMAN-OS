# 🦇 Proyecto: Bat-OS Kali Linux Cyberdeck

Guía paso a paso para transformar el entorno de Kali Linux en una interfaz de pentesting moderna, minimalista y con estética de *Batman/Gotham*, optimizada para pantallas pequeñas de cyberdecks.

---

## 🛠️ 1. Configuración del Núcleo: ZSH y Plugins

### Instalar Oh My Zsh
Si tu instalación de Kali aún usa la terminal por defecto, instala el framework base:
bash
sh -c "$(curl -fsSL https://githubusercontent.com)"


### Instalar Plugins de Productividad (Pentesting Moderno)
Clona los repositorios oficiales de autocompletado inteligente y resaltado de comandos en tiempo real:
bash
# Autosugerencias estilo IA
git clone https://github.com ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Resaltado de sintaxis (Comandos correctos en verde, incorrectos en rojo)
git clone https://github.com ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


---

## 🎨 2. Estética de la Consola: El .zshrc de Batman

Abre tu archivo de configuración con nano ~/.zshrc y reemplaza la sección de plugins y prompt con el siguiente bloque:

bash
# 1. Habilitar plugins modernos para auditorías rápidas
plugins=(git zsh-autosuggestions zsh-syntax-highlighting extract copypath)

# 2. Requisito indispensable: Instalar una "Nerd Font" para ver los íconos (ej. FiraCode Nerd Font)
# Prompt minimalista táctico estilo Wayne Enterprises
PROMPT='%F{240}┌─── %F{yellow}🦇 %F{000}%K{yellow} BAT-SHELL %k%F{yellow} %F{033}%~
%F{240}└─%F{white}$ '


Para aplicar los cambios sin reiniciar la consola ejecuta: source ~/.zshrc

---

## 🖥️ 3. Banner de Inicio (Batcomputador ASCII Art)

Para que la terminal despliegue el logotipo táctico de Batman cada vez que se inicie, añade este bloque de código al *final absoluto* de tu archivo ~/.zshrc:

bash
# Banner Oficial Bat-OS Cyberdeck
echo -e "\e[1;34m" # Cambia el color a azul eléctrico estilo monitor militar
cat << "EOF"
         _/\_/\_                                 _/\_/\_
        /       \                               /       \
      =(  O   O  )=                           =(  O   O  )=
        \   ^   /                               \   ^   /
   _/\___/\_/_/\___/\_                     _/\___/\_/_/\___/\_
  /                   \                   /                   \

 |  ()             ()  |                 |  ()             ()  |
  \                   /                   \                   /
   \_    _/\_/\_    _/                     \_    _/\_/\_    _/
     \_ /       \ _/                         \_ /       \ _/
       \\   ^   //                             \\   ^   //
         \/_/\_\/                                \/_/\_\/

              [ SYSTEM STATUS: GOTHAM NET SECURED ]
EOF
echo -e "\e[0m" # Resetea el color de la fuente para los comandos


---

## 🎛️ 4. Entorno de Escritorio (XFCE / GNOME)

Para lograr que las ventanas combinen perfectamente con la interfaz de la pantalla de tu dispositivo:

1. *Tema Oscuro Industrial:* Ve a los ajustes de apariencia de Kali y selecciona el tema integrado *Kali-Dark-XFCE*. 
2. *Esquema de Colores de Ventana:* Configura los bordes en negro mate y la tipografía del sistema en color *Amarillo (#FFD700)* o *Azul Neón (#00E5FF)*.
3. *Fondos de Pantalla:* Descarga fondos abstractos de interfaces tecnológicas oscuras desde el sitio temático [Rataalada](https://rataalada.com) (de la película The Batman).
