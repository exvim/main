rem create inherits
echo Creating Inherits...

set GAWK_CMD="%TOOLS%\windows\gawk.exe"
if not exist %GAWK_CMD% (
    set GAWK_CMD=gawk
)

rem process
if exist "%DEST%\tags" (
    echo   ^|- generate %TMP%
    %GAWK_CMD% -f "%TOOLS%\gawk\inherits.awk" "%DEST%\tags">"%TMP%"
)

rem replace old file
if exist "%TMP%" (
    echo   ^|- move %TMP% to %TARGET%
    move /Y "%TMP%" "%TARGET%" > nul
)
echo   ^|- done!
