#!/bin/bash -xv
# SPDX-FilaCopyrightText: 2022 Aika Katsuki
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at line $1
	res=1
}

res=0

### I/0 TEST ###
out=$(seq 5 | ./plus)
[ "${out}" = 15.0 ] || ng ${LINENO}

### STRANGE INPUT ###
[ "$res" = 0 ] && echo OK
exit $res






