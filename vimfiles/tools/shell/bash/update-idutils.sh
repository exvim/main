#!/bin/bash

# create ID
echo "Creating ID..."

# try to use auto-gen id language map
echo "  |- generate ${TMP}"
if [ -f "${DEST}/id-lang-autogen.map" ]; then
    LANG_MAP="${DEST}/id-lang-autogen.map"

# if auto-gen map not exists we use default one in tools directory
else
    LANG_MAP="${TOOLS}/idutils/id-lang.map"
fi
mkid --file="${TMP}" --include="text" --lang-map="${LANG_MAP}" --files0-from="${DEST}/idutils-files"

# replace old file
if [ -f "${TMP}" ]; then
    echo "  |- move ${TMP} to ${TARGET}"
    mv -f "${TMP}" "${TARGET}"
fi
echo "  |- done!"
