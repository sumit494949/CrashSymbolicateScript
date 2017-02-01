

PATH_TOOL=$(find /Applications/Xcode.app/ -name symbolicatecrash)
echo "$PATH_TOOL"

CRASH_FILE=$(find . -name "*.crash" -prune)

SYMBOL_FILE=$(find . -name "*app.dSYM" -prune)


echo "$SYMBOL_FILE"

export DEVELOPER_DIR="/Applications/XCode.app/Contents/Developer"

$PATH_TOOL $CRASH_FILE $SYMBOL_FILE > ./symbolicated_file.crash

echo "Done."


