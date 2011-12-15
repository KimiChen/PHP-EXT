dnl $Id$
dnl config.m4 for extension ccvita

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

PHP_ARG_WITH(ccvita, for ccvita support,
Make sure that the comment is aligned:
[  --with-ccvita             Include ccvita support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(ccvita, whether to enable ccvita support,
dnl Make sure that the comment is aligned:
dnl [  --enable-ccvita           Enable ccvita support])

if test "$PHP_CCVITA" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-ccvita -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/ccvita.h"  # you most likely want to change this
  dnl if test -r $PHP_CCVITA/$SEARCH_FOR; then # path given as parameter
  dnl   CCVITA_DIR=$PHP_CCVITA
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for ccvita files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       CCVITA_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$CCVITA_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the ccvita distribution])
  dnl fi

  dnl # --with-ccvita -> add include path
  dnl PHP_ADD_INCLUDE($CCVITA_DIR/include)

  dnl # --with-ccvita -> check for lib and symbol presence
  dnl LIBNAME=ccvita # you may want to change this
  dnl LIBSYMBOL=ccvita # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $CCVITA_DIR/lib, CCVITA_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_CCVITALIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong ccvita lib version or lib not found])
  dnl ],[
  dnl   -L$CCVITA_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(CCVITA_SHARED_LIBADD)

  PHP_NEW_EXTENSION(ccvita, ccvita.c, $ext_shared)
fi
