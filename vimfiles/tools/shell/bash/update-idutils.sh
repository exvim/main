# create ID
echo "Creating ID..."

# try to use auto-gen id language map
if [ -f "${DEST}/id-lang-autogen.map" ]; then
    echo "  |- generate ID by auto-gen language map"
    LANG_MAP="${DEST}/id-lang-autogen.map"

# if auto-gen map not exists we use default one in tools directory
else
    echo "  |- generate ID by default language map"
    LANG_MAP="${TOOLS}/idutils/id-lang.map"
fi
mkid --file=${TMP} --include="text" --lang-map=${LANG_MAP} ${FOLDER_FILTER}

# replace old file
if [ -f "${TMP}" ]; then
    echo "  |- move ${TMP} to ${TARGET}"
    mv -f ${TMP} ${TARGET}
fi
echo "  |- done!"
