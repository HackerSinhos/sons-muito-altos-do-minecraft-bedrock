@echo off
title Fazendo o arquivo .mcpack ...

7z a sons-muito-altos-addon.mcpack

if exist ".git" ( 
  7z d sons-muito-altos-addon.mcpack .git
  7z d sons-muito-altos-addon.mcpack build.cmd
  7z d sons-muito-altos-addon.mcpack 7z.exe
  7z d sons-muito-altos-addon.mcpack README.md
  exit
) else (
  7z d sons-muito-altos-addon.mcpack build.cmd
  7z d sons-muito-altos-addon.mcpack 7z.exe
  7z d sons-muito-altos-addon.mcpack README.md
  exit
)