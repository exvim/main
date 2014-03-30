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
if /I "%FOLDERS%" == "" (
    dir /s /b %FILE_SUFFIXS%|sed "s,\(%CWD_PATTERN%\)\(.*\),.\2,gI" >> "%TMP%"
) else (
    dir /b %FILE_SUFFIXS%|sed "s,\(.*\),.\\\1,gI" >> "%TMP%"
    for %%i in (%FOLDERS%) do (
        cd %%i
        dir /s /b %FILE_SUFFIXS%|sed "s,\(%CWD_PATTERN%\)\(.*\),.\2,gI" >> "%TMP%"
        cd ..
    )
)

echo   ^|- filter out invalid files 
rem NOTE: dir /s /b *.cpp will list xxx.cpp~, too. So use gawk here to filter out thoes things.
gawk -v filter_pattern=%FILE_FILTER_PATTERN% -f "%TOOLS%\gawk\file-filter.awk" "%TMP%">"%TMP2%"
del "%TMP%" > nul
if exist %TMP2% (
    echo   ^|- move %TMP2% to %TARGET%
    move /Y %TMP2% %TARGET% > nul
)
echo   ^|- done!
