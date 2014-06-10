rem create inherits
echo Creating Inherits...

rem process
if exist "%DEST%\tags" (
    echo   ^|- generate %TMP%
    gawk -f "%TOOLS%\gawk\inherits.awk" "%DEST%\tags">"%TMP%"
)

rem replace old file
if exist "%TMP%" (
    echo   ^|- move %TMP% to %TARGET%
    move /Y "%TMP%" "%TARGET%" > nul
)
echo   ^|- done!
