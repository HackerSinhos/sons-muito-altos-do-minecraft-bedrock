@echo off
title Fazendo o arquivo .mcpack ...

del /f .git 
7z a sons-muito-altos-addon.mcpack
7z d sons-muito-altos-addon.mcpack build.cmd
7z d sons-muito-altos-addon.mcpack 7z.exe
exit