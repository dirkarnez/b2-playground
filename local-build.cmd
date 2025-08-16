@echo off

cd /d %~dp0
set DOWNLOADS_DIR=%USERPROFILE%\Downloads
set DOWNLOADS_DIR_LINUX=%DOWNLOADS_DIR:\=/%

SET PATH=^
C:\Windows\System32;^
%DOWNLOADS_DIR%\PortableGit\bin;^
%DOWNLOADS_DIR%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64;^
%DOWNLOADS_DIR%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin;^
%DOWNLOADS_DIR%\b2-5.3.3\b2-5.3.3;^
%DOWNLOADS_DIR%\bison-2.4.1-bin\bin;


b2 toolset=gcc release link=static runtime-link=static &&^
echo ok
