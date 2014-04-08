@echo off
rem create ID
echo Creating ID...

rem try to use auto-gen id language map
echo   ^|- generate %TMP%
if exist "%DEST%\id-lang-autogen.map" (
    set LANG_MAP=%DEST%\id-lang-autogen.map
) else (
rem if auto-gen map not exists we use default one in tools directory
    set LANG_MAP=%TOOLS%\idutils\id-lang.map
)
mkid --file="%TMP%" --include="text" --lang-map="%LANG_MAP%" --prune="%EXCLUDE_FOLDERS%"

rem replace old file
if exist "%TMP%" (
    echo   ^|- move %TMP% to %TARGET%
    move /Y "%TMP%" "%TARGET%" > nul
)
echo   ^|- done!
