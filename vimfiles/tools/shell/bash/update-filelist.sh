#!/bin/bash

# create files
echo "Creating Filelist..."

# test posix regex
find . -maxdepth 1 -regextype posix-extended -regex "test" > /dev/null 2>&1
if test "$?" = "0"; then
    FORCE_POSIX_REGEX_1=""
    FORCE_POSIX_REGEX_2="-regextype posix-extended"
else
    FORCE_POSIX_REGEX_1="-E"
    FORCE_POSIX_REGEX_2=""
fi

# get filelist
echo "  |- generate ${TMP}"
if test "${FOLDERS}" != ""; then
    # NOTE: there still have files under root
    find ${FORCE_POSIX_REGEX_1} . -type f -maxdepth 1 -not -path "*/\.*" ${FORCE_POSIX_REGEX_2} -regex ".*\.("${FILE_SUFFIXS}")" > "${TMP}"
    # we use comma for for-loop. Because FOLDERS may include white-space folders
    IFS=$','
    for d in ${FOLDERS}; do 
        unset IFS
        find ${FORCE_POSIX_REGEX_1} "$d" -type f -not -path "*/\.*" ${FORCE_POSIX_REGEX_2} -regex ".*\.("${FILE_SUFFIXS}")" >> "${TMP}"
    done
    unset IFS
else
    find ${FORCE_POSIX_REGEX_1} . -type f -not -path "*/\.*" ${FORCE_POSIX_REGEX_2} -regex ".*\.("${FILE_SUFFIXS}")" > "${TMP}"
fi

# replace old file
if [ -f "${TMP}" ]; then
    echo "  |- move ${TMP} to ${TARGET}"
    mv -f "${TMP}" "${TARGET}"
fi
echo "  |- done!"
