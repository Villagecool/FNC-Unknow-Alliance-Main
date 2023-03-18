@echo off
echo Bulding...
haxelib run lime build windows
echo Done.
goto Ask

:Again
cls
echo Bulding...
haxelib run lime build windows
echo Done!

:Ask
echo ___________________________________________________________________________
set /p menu="Build Again? [Y/N]"
       if %menu%==Y goto Again
       if %menu%==y goto Again
       if %menu%==N goto Close
       if %menu%==n goto Close

:Close
exit