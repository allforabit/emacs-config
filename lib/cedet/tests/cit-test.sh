#!/bin/sh

EMACS=${EMACS:-emacs};

rm -r /tmp/CEDET_INTEG*
$EMACS -q -l ../common/cedet.el -l cit-load.el -f toggle-debug-on-error  -f toggle-debug-on-quit -f cedet-integ-test
