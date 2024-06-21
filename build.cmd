@echo off
title Fazendo o arquivo .mcpack ...

7z a sons-muito-altos-addon.zip

if exist ".git" ( 
  7z d sons-muito-altos-addon.zip .git
  7z d sons-muito-altos-addon.zip build.cmd
  7z d sons-muito-altos-addon.zip 7z.exe
  7z d sons-muito-altos-addon.zip README.md
  rename sons-muito-altos-addon.zip sons-muito-altos-addon.mcpack
  exit
) else (
  7z d sons-muito-altos-addon.zip build.cmd
  7z d sons-muito-altos-addon.zip 7z.exe
  7z d sons-muito-altos-addon.zip README.md
  rename sons-muito-altos-addon.zip sons-muito-altos-addon.mcpack
  exit
)