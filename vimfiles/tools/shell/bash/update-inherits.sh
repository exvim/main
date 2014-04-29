#!/bin/bash

# create inherits
echo "Creating Inherits..."

# process
if [ -f "${DEST}/tags" ]; then
    echo "  |- generate ${TMP}"
    gawk -f "${TOOLS}/gawk/inherits.awk" "${DEST}/tags">"${TMP}"
fi

# replace old file
if [ -f "${TMP}" ]; then
    echo "  |- move ${TMP} to ${TARGET}"
    mv -f "${TMP}" "${TARGET}"
fi
echo "  |- done!"
