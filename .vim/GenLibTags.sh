#!/bin/bash

C_FILES="/usr/include/assert.h /usr/include/ctype.h /usr/include/dirent.h /usr/include/errno.h /usr/include/fenv.h /usr/include/inttypes.h /usr/include/limits.h /usr/include/math.h /usr/include/setjmp.h /usr/include/signal.h /usr/include/stdint.h /usr/include/stdio.h /usr/include/stdlib.h /usr/include/string.h /usr/include/time.h /usr/include/pthread.h"
FILE_LIST="/usr/include/sys /usr/include/c++ /usr/include/arpa /usr/include/netinet" 

ctags -R --c++-kinds=+p --fields=+ialS --extra=+q ${C_FILES} ${FILE_LIST}

HOME_DIR=~

if [ `pwd` != "${HOME_DIR}/.vim" ]
then
    mv tags ~/.vim
fi

