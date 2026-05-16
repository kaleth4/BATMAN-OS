# 🦇 **Bat-OS Kali Linux**
*Transforma tu Kali Linux en una estación de pentesting con estética *Gotham City*, minimalista y optimizada para cyberdecks.*
<img width="1376" height="768" alt="image_36732166" src="https://github.com/user-attachments/assets/d4e9c47e-6be1-434f-bd13-ba8a40a55bd3" />

---

## 📌 **Descripción**
Guía definitiva para convertir tu terminal y escritorio en una interfaz táctica de **Batman**, con herramientas modernas de pentesting, prompts minimalistas y arte ASCII exclusivo. Ideal para **pantallas pequeñas** de cyberdecks (Raspberry Pi, Pinebook, etc.).

---

## 🛠️ **1. Configuración del Núcleo: ZSH y Plugins**
### **Instalar Oh My Zsh**
Si Kali Linux usa la terminal por defecto, instala el framework base:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### **Plugins de Productividad (Pentesting Moderno)**
Clona repositorios para **autocompletado inteligente** y **resaltado de sintaxis**:
```bash
# Autosugerencias estilo IA (como GitHub Copilot)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Resaltado de sintaxis (verde/rojo para comandos correctos/incorrectos)
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

---

## 🎨 **2. Estética de la Consola: `.zshrc` de Batman**
Edita tu archivo de configuración:
```bash
nano ~/.zshrc
```

Reemplaza la sección de plugins y prompt con:
```bash
# Plugins para auditorías rápidas
plugins=(git zsh-autosuggestions zsh-syntax-highlighting extract copypath)

# Prompt minimalista táctico (estilo Wayne Enterprises)
PROMPT='%F{240}┌─── %F{yellow}🦇 %F{000}%K{yellow} BAT-SHELL %k%F{yellow} %F{033}%~
%F{240}└─%F{white}$ '
```

🔹 **Requisito:** Instala una **Nerd Font** (ej. *FiraCode Nerd Font*) para ver íconos correctamente.
🔹 Aplica cambios sin reiniciar:
```bash
source ~/.zshrc
```

---

## 🖥️ **3. Banner de Inicio (Batcomputador ASCII Art)**
Añade este bloque al **final** de `~/.zshrc` para mostrar un logo de Batman al iniciar la terminal:
```bash
# Banner Oficial Bat-OS Cyberdeck
echo -e "\e[1;34m" # Azul eléctrico estilo monitor militar
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
echo -e "\e[0m" # Resetea el color
```

---
## 🎛️ **4. Entorno de Escritorio (XFCE / GNOME)**
Para integrar la estética *Gotham* en tu escritorio:

### **Opción A: Tema Dark (Gotham)**
1. Instala un tema oscuro

1. *Tema Oscuro Industrial:* Ve a los ajustes de apariencia de Kali y selecciona el tema integrado *Kali-Dark-XFCE*. 
2. *Esquema de Colores de Ventana:* Configura los bordes en negro mate y la tipografía del sistema en color *Amarillo (#FFD700)* o *Azul Neón (#00E5FF)*.
3. *Fondos de Pantalla:* Descarga fondos abstractos de interfaces tecnológicas oscuras desde el sitio temático [Rataalada](https://rataalada.com) (de la película The Batman).
