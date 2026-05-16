# 🦇 Bat-OS Kali Linux
## Transforma tu Cyberdeck en una Fortaleza de Gotham

> **Una guía completa para crear el entorno de pentesting más oscuro, minimalista y letal jamás visto en una pantalla pequeña.**

---

## 📋 Tabla de Contenidos
- [🛠️ Configuración del Núcleo](#-configuración-del-núcleo-zsh-y-plugins)
- [🎨 Estética Batman](#-estética-de-la-consola-el-zshrc-de-batman)
- [🖥️ Banner Gotham](#-banner-de-inicio-batcomputador-ascii-art)
- [🎛️ Entorno de Escritorio](#-entorno-de-escritorio-xfce--gnome)
- [⚡ Requisitos](#-requisitos)
- [🚀 Inicio Rápido](#-inicio-rápido)

---

## 🛠️ Configuración del Núcleo: ZSH y Plugins

### Paso 1: Instalar Oh My Zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Paso 2: Instalar Plugins de Productividad
```bash
# Autosugerencias inteligentes estilo IA
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Resaltado de sintaxis en tiempo real
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

---

## 🎨 Estética de la Consola: El .zshrc de Batman

Abre tu configuración:
```bash
nano ~/.zshrc
```

**Reemplaza la sección de plugins:**
```bash
plugins=(git zsh-autosuggestions zsh-syntax-highlighting extract copypath)

# Prompt minimalista táctico estilo Wayne Enterprises
PROMPT='%F{240}┌─── %F{yellow}🦇 %F{000}%K{yellow} BAT-SHELL %k%F{yellow} %F{033}%~
%F{240}└─%F{white}$ '
```

**Aplica los cambios:**
```bash
source ~/.zshrc
```

### ⚠️ Requisito: Instalar Nerd Font
Descarga **FiraCode Nerd Font** o **JetBrains Mono Nerd Font** para visualizar correctamente los íconos Batman.

---

## 🖥️ Banner de Inicio: Batcomputador ASCII Art

Añade al **final absoluto** de `~/.zshrc`:

```bash
# Banner Oficial Bat-OS Cyberdeck
echo -e "\e[1;34m"
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
echo -e "\e[0m"
```

---

## 🎛️ Entorno de Escritorio (XFCE / GNOME)

### Tema Recomendado
```bash
# Instala tema oscuro minimalista
sudo apt install xfce4-theme-manager

# Tema sugerido: Adwaita-dark o Arc-dark
```

### Configuración de Colores
- **Fondo:** Negro (#000000)
- **Acentos:** Amarillo (#FFD700) o Azul Eléctrico (#0080FF)
- **Fuente:** Blanca (#FFFFFF) sobre fondo oscuro

---

## ⚡ Requisitos

| Componente | Versión Mínima |
|-----------|-----------------|
| Kali Linux | 2023.1+ |
| ZSH | 5.8+ |
| Oh My Zsh | Última |
| Nerd Font | Cualquiera |

---

## 🚀 Inicio Rápido

```bash
# 1. Instala Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 2. Clona los plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# 3. Edita tu .zshrc con la configuración Batman
nano ~/.zshrc

# 4. Recarga la configuración
source ~/.zshrc
```

---


**🦇 Bienvenido a Gotham. Tu cyberdeck está listo para la batalla. 🦇**
