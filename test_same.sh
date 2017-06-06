#!/bin/sh

tmp=/tmp/$$

ERROT_EXIT () {
echo "$1" >&2
rm -f $tmp-*
exit 1
}

#test 1#
echo aaa bbb NG > $tmp-ans
./same.sh aaa bbb $tmp-out || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-out || ERROR "TEST1-2"

echo OK
rm -f $tmp-*
exit 0
