#!/bin/bash

CONFIG_DIR="$HOME/.config/nvim"
BACKUP_DIR="$HOME/.config/nvim-backup"

echo "🔄 Revirtiendo configuración de Neovim..."

# Verifica si el symlink existe
if [ -L "$CONFIG_DIR" ]; then
    echo "🧹 Eliminando enlace simbólico en ~/.config/nvim"
    rm "$CONFIG_DIR"
else
    echo "⚠️ No se detectó enlace simbólico. Abortando."
    exit 1
fi

# Restaurar respaldo si existe
if [ -d "$BACKUP_DIR" ]; then
    echo "♻️ Restaurando respaldo original..."
    mv "$BACKUP_DIR" "$CONFIG_DIR"
    echo "✅ Restauración completada en ~/.config/nvim"
else
    echo "ℹ️ No se encontró respaldo para restaurar. Operación parcial completada."
fi
