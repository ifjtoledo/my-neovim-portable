# 🧘 Neovim Shaolin Portable

Esta es tu configuración definitiva, modular, respetuosa con la filosofía original de Vim/Neovim, diseñada para ser **portable**, **mantenible**, y **usable** en Linux, macOS, Windows (con WSL2) y entornos VPS sin alterar el diseño original modal de Neovim.

## 🎯 Objetivos del Proyecto

- Sincronización mediante Git
- Portabilidad real entre sistemas
- Modularidad con Lua
- Respetar la filosofía modal y minimalista
- Cero dependencias mágicas
- Compatible con terminales TTY

## 📦 Instalación

```bash
git clone https://github.com/ifjtoledo/my-neovim-portable ~/my-neovim-portable
cd ~/my-neovim-portable
./install.sh
```

Este script:
- Crea backup de tu `~/.config/nvim`
- Crea symlink hacia `~/my-neovim-portable/nvim`
- Permite editar directamente el repositorio y subir cambios

## 🔁 Desinstalación

```bash
./uninstall.sh
```

Este script:
- Elimina el symlink `~/.config/nvim`
- Restaura el backup original si existía

## 🧱 Requisitos

- Neovim ≥ 0.9 instalado (`nvim --version`)
- Git
- Opcional: `ripgrep`, `fd`, `nerd-fonts`

## 💡 Filosofía

Esta configuración honra la visión de Bram Moolenaar y los desarrolladores de Neovim: modal, eficiente, clara. Está construida desde cero para comprender Neovim profundamente.

