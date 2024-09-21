#!/bin/sh

mytitle="Fazendo o arquivo .mcpack ..."
echo -e '\033]2;'$mytitle'\007'

if ! command -v 7z >/dev/null 2>&1; then
    echo "Erro, comando 7z não encontrado."
    exit 1
fi

7z a sons-muito-altos-addon.mcpack

if [ -d ".git" ]; then
    7z d sons-muito-altos-addon.mcpack .git
    7z d sons-muito-altos-addon.mcpack build.cmd
    7z d sons-muito-altos-addon.mcpack 7z.exe
    7z d sons-muito-altos-addon.mcpack README.md
    7z d build.sh
    7z d .gitignore
else
    7z d sons-muito-altos-addon.mcpack build.cmd
    7z d sons-muito-altos-addon.mcpack 7z.exe
    7z d sons-muito-altos-addon.mcpack README.md
    7z d build.sh
    7z d .gitignore
fi
