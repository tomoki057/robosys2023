#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Tomoki sato
# SPDX-Licence-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

### I/O TEST ###
out=$(seq 5 | ./plus)
[ "${out}" = 15.0 ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}
    　 
out=$(echo | ./plus) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

### I/O TEST ###
out=$(seq 5 | ./sub)
[ "${out}" = -15.0 ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./sub)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}
    　
out=$(echo | ./sub) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

### I/O TEST ###
out=$(seq 5 | ./multi)
[ "${out}" = 120.0 ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./multi)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}
    　
out=$(echo | ./multi) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

### I/O TEST ###
out=$(seq 5 | ./div)
[ "${out}" = 0.008333333333333333 ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./div)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}
    　
out=$(echo | ./div) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res

