#!/bin/bash

# create tags
echo "Creating Tags..."

# choose ctags path first
if [ -f "${DEST}/files" ]; then
    FILES="-L ${DEST}/files"
else
    FILES="-R ."
fi

# process tags by langugage
echo "  |- generate ${TMP}"
${CTAGS_CMD} -o "${TMP}" ${OPTIONS} "${FILES}"

# replace old file
if [ -f "${TMP}" ]; then
    echo "  |- move ${TMP} to ${TARGET}"
    mv -f "${TMP}" "${TARGET}"
fi
echo "  |- done!"
