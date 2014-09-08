@echo off
rem Create fileslist
echo Creating Filelist...

rem create cwd pattern for sed
set CWD_PATTERN=%cd%
for /f "delims=" %%a in ('echo %cd%^|sed "s,\\,\\\\,g"') do (
    set CWD_PATTERN=%%a
)

rem process
echo   ^|- generate %TMP%
dir /s /b %FILE_SUFFIXS%|sed "s,\(%CWD_PATTERN%\)\(.*\),.\2,gI" > "%TMP%"

echo   ^|- apply filter
rem NOTE: dir /s /b *.cpp will list xxx.cpp~, too. So use gawk here to filter out thoes things.
gawk -v filter_pattern=%FILE_FILTER_PATTERN% -v folder_filter=%FOLDER_FILTER_PATTERN% -f "%TOOLS%\gawk\file-filter-%GAWK_SUFFIX%.awk" "%TMP%">"%TMP2%"
del "%TMP%" > nul
if exist "%TMP2%" (
    echo   ^|- move %TMP2% to %TARGET%
    move /Y "%TMP2%" "%TARGET%" > nul
)

rem process id-utils files
if exist "%TARGET%" (
    echo   ^|- generate %ID_TARGET%
    gawk -f "%TOOLS%/gawk/null-terminal-files.awk" "%TARGET%">"%ID_TARGET%"
)

echo   ^|- done!
