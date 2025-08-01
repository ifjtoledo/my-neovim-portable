#!/bin/bash

set -e

# ──────────────────────────────
# 🧠 VARIABLES
# ──────────────────────────────

SOURCE_DIR="$(pwd)/nvim"
TARGET_DIR="$HOME/.config/nvim"
BACKUP_DIR="$HOME/.config/nvim-backup-$(date +%Y%m%d-%H%M%S)"
WSL_DETECTED=$(grep -i microsoft /proc/version 2>/dev/null || true)

# ──────────────────────────────
# ⚠️ VALIDACIONES
# ──────────────────────────────

# Avisa si estás dentro de /mnt/c (Windows FS)
if [[ "$SOURCE_DIR" =~ ^/mnt/[c-zC-Z] ]]; then
  echo "⚠️  Estás ejecutando este script desde el disco de Windows: $SOURCE_DIR"
  echo "❌  No se recomienda crear symlinks desde /mnt/c hacia ~/.config/"
  echo "🛑  Muévete al sistema de archivos de WSL (por ejemplo: /home/usuario/) y vuelve a intentarlo."
  exit 1
fi

# ──────────────────────────────
# 📦 CREAR BACKUP SI EXISTE
# ──────────────────────────────

if [ -e "$TARGET_DIR" ] || [ -L "$TARGET_DIR" ]; then
  echo "📦 Backup de configuración anterior en: $BACKUP_DIR"
  mv "$TARGET_DIR" "$BACKUP_DIR"
fi

# ──────────────────────────────
# 🔗 CREAR ENLACE SIMBÓLICO
# ──────────────────────────────

ln -s "$SOURCE_DIR" "$TARGET_DIR"
echo "✅ Symlink creado: $TARGET_DIR → $SOURCE_DIR"

# ──────────────────────────────
# 🎉 MENSAJE FINAL
# ──────────────────────────────

echo ""
if [ -n "$WSL_DETECTED" ]; then
  echo "🐧 Instalación completada en WSL2 (Linux real)."
else
  echo "🐧 Instalación completada en Linux nativo."
fi
echo "Puedes iniciar Neovim con: nvim"
