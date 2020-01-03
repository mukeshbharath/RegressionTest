#!/bin/sh
#typeset package=<package_name>
for package; do
  dpkg -s "$package" >/dev/null 2>&1 && {
    echo "$package is installed."
  } || {
    echo "$package is not installed, now installing..."
    sudo apt-get install package
  }
done
