#!/bin/sh
ctags -I__THROW -I__attribute_pure__ -I__non_null -I__attribte__ --file-scope=yes --langmap=c:+.h --language-force=c --language-force=c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q -f ~/.vim/systags /usr/include/* /usr/include/sys/* /usr/local/include/*/*
