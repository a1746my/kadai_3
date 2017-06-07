#!/bin/sh

ERROT_EXIT () {
echo $1 1>&2
exit 1
}

#test 1#
echo "Greatest common divisor is 100" > /tmp/$$-ans
./saidai2.sh 300 10000 > /tmp/$$-out || ERROR_EXIT "TEST1-1"
diff /tmp/$$-ans /tmp/$$-out || ERROR_EXIT "TEST1-2"

echo OK

