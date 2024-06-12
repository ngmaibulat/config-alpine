#!/bin/sh


#cat > /etc/apk/repositories << EOF; $(echo)

#https://dl-cdn.alpinelinux.org/alpine/v$(cut -d'.' -f1,2 /etc/alpine-release)/main/
#https://dl-cdn.alpinelinux.org/alpine/v$(cut -d'.' -f1,2 /etc/alpine-release)/community/
#https://dl-cdn.alpinelinux.org/alpine/edge/testing/

#EOF

path=/etc/apk/repositories
ver=$(cut -d'.' -f1,2 /etc/alpine-release)

echo -e "\n" > $path

echo "https://dl-cdn.alpinelinux.org/alpine/v$ver/main/"      >> $path
echo "https://dl-cdn.alpinelinux.org/alpine/v$ver/community/" >> $path
echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing/"    >> $path

apk update

