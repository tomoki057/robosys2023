#!/bin/bash
# SPDX-FileCopyrightText: 2023 Tomoki sato
# SPDX-Licence-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

### I/O TEST ###
out=$(seq 5 | ./plus)
[ "${out}" = "15.0
-15.0
120.0
0.008333333333333333" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res

