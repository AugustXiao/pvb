#!/bin/bash
##########################################################
# use qt5 if available                                   #
##########################################################
if [ -x /usr/bin/qmake-qt5 ]; then  
  /usr/bin/qmake-qt5 $1 $2 $3 $4 $5 $6 $7 $8
  exit
fi
##########################################################
# fucking stuff to call qmake on different distributions #
##########################################################
if [ -x /usr/bin/qmake-qt4 ]; then  
  /usr/bin/qmake-qt4 $1 $2 $3 $4 $5 $6 $7 $8
  exit
fi
if [ -x /usr/lib/qt4/bin/qmake-qt4 ]; then  
  /usr/lib/qt4/bin/qmake-qt4 $1 $2 $3 $4 $5 $6 $7 $8
  exit
fi
if [ -x /usr/lib/qt4/bin/qmake ]; then  
  /usr/lib/qt4/bin/qmake $1 $2 $3 $4 $5 $6 $7 $8
  exit
fi
#
# added following 2 if because of rhel/centos x86_64 distributions
#
if [ -x /usr/lib64/qt4/bin/qmake-qt4 ]; then  
  /usr/lib64/qt4/bin/qmake-qt4 $1 $2 $3 $4 $5 $6 $7 $8
  exit
fi
if [ -x /usr/lib64/qt4/bin/qmake ]; then  
  /usr/lib64/qt4/bin/qmake $1 $2 $3 $4 $5 $6 $7 $8
  exit
fi
if [ -x /usr/bin/qmake ]; then  
  /usr/bin/qmake $1 $2 $3 $4 $5 $6 $7 $8
  exit
fi
if [ -x /opt/pvb/fake_qmake/fake_qmake ]; then  
  /opt/pvb/fake_qmake/fake_qmake -fake $1 $2 $3 $4 $5 $6 $7 $8
  exit
fi
qmake $1 $2 $3 $4 $5 $6 $7 $8

