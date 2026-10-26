#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "Missing argument"
    exit 1
fi

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ ! -d "$SCRIPT_DIR/$1" ]; then
    echo "Wrong mod name"
    exit 2
fi

echo "rm -R ~/.local/share/Paradox\ Interactive/Stellaris/mod/$1"
rm -R ~/.local/share/Paradox\ Interactive/Stellaris/mod/$1
echo "cp -R $SCRIPT_DIR/$1 ~/.local/share/Paradox\ Interactive/Stellaris/mod"
cp -R $SCRIPT_DIR/$1 ~/.local/share/Paradox\ Interactive/Stellaris/mod
echo "cp -R $SCRIPT_DIR/$1.mod ~/.local/share/Paradox\ Interactive/Stellaris/mod"
cp -R $SCRIPT_DIR/$1.mod ~/.local/share/Paradox\ Interactive/Stellaris/mod
