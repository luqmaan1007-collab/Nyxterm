#!/bin/bash
COMMAND_NAME="quickgrep"
SCRIPT_PATH="./quickgrep.sh"
DEB_DIR="deb_build/$COMMAND_NAME"

mkdir -p "$DEB_DIR/DEBIAN" "$DEB_DIR/usr/bin"

cat > "$DEB_DIR/DEBIAN/control" <<EOF
Package: $COMMAND_NAME
Version: 1.0
Section: utils
Priority: optional
Architecture: all
Maintainer: Luqmaan Ali <luqmaan1007@hotmail.com>
Description: Nyx custom command $COMMAND_NAME
EOF

cp "$SCRIPT_PATH" "$DEB_DIR/usr/bin/$COMMAND_NAME"
chmod 755 "$DEB_DIR/usr/bin/$COMMAND_NAME"

dpkg-deb --build "$DEB_DIR"
echo "[✓] Built $COMMAND_NAME.deb"
