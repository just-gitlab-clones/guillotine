#!/bin/sh

SRC_DIR="$(dirname "$(readlink -m "${0}")")"
DEST_DIR="$(dirname ~/.local/share/gnome-shell/extensions/guillotine2@fopdoodle.net/extension.js)"

echo SRC_DIR: $SRC_DIR
echo DEST_DIR: $DEST_DIR
if test -d "$DEST_DIR"; then
  echo "Directory `$DEST_DIR` already exists. Deleting..."
  rm -R "$DEST_DIR"
fi

echo "Installing in `$DEST_DIR`..."
mkdir -p $DEST_DIR

cp -R "$SRC_DIR/schemas" "$DEST_DIR/"
cp "$SRC_DIR/default.json" $DEST_DIR/
cp "$SRC_DIR/extension.js" "$DEST_DIR/"
cp "$SRC_DIR/guillotine-symbolic.svg" "$DEST_DIR/"
cp "$SRC_DIR/LICENSE" "$DEST_DIR/"
cp "$SRC_DIR/metadata.json" "$DEST_DIR/"
cp "$SRC_DIR/README.md" "$DEST_DIR/"
echo "Done."