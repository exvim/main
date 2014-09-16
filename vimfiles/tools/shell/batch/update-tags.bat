@echo off
rem create tags
echo Creating Tags...

if exist "%TOOLS%\windows\ctags.exe" (
    set CTAGS_CMD="%TOOLS%\windows\ctags.exe"
)

rem choose ctags path first
if exist "%DEST%\files" (
    set FILES=-L "%DEST%\files"
) else (
    set FILES=-R .
)

rem process tags by langugage
echo   ^|- generate %TMP%
%CTAGS_CMD% -o"%TMP%" %OPTIONS% %FILES%

rem replace old file
if exist "%TMP%" (
    echo   ^|- move %TMP% to %TARGET%
    move /Y "%TMP%" "%TARGET%" > nul
)
echo   ^|- done!
