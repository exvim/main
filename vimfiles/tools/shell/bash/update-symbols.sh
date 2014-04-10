#!/bin/bash

# create symbols
echo "Creating Symbols..."

# process
if [ -f "${DEST}/tags" ]; then
    echo "  |- generate ${TMP}"
    gawk -f "${TOOLS}/gawk/no-strip-symbol.awk" "${DEST}/tags">"${TMP}"
fi

# replace old file
if [ -f "${TMP}" ]; then
    echo "  |- move ${TMP} to ${TARGET}"
    mv -f "${TMP}" "${TARGET}"
fi
echo "  |- done!"
