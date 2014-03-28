@echo off
rem create ID
echo Creating ID...

rem try to use auto-gen id language map
if exist %DEST%\id-lang-autogen.map (
    echo   ^|- generate ID by auto-gen language map
    set LANG_MAP=%DEST%\id-lang-autogen.map
) else (
rem if auto-gen map not exists we use default one in tools directory
    echo   ^|- generate ID by default language map
    set LANG_MAP=%TOOLS%\idutils\id-lang.map
)
mkid --file=%TMP% --include="text" --lang-map="%LANG_MAP%" %FOLDER_FILTER%

rem replace old file
if exist %TMP% (
    echo   ^|- move %TMP% to %TARGET%
    move /Y %TMP% %TARGET% > nul
)
echo   ^|- done!
