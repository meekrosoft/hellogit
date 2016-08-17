#!/bin/bash

function testString {
    if eval $2  | grep -vq "$3"; then
      echo "**** Assert Failed! ****"
      echo $1
      echo "************************"
      exit 1
    fi
}

testString "Script should give a shout out for home town" ./hello.sh 'Copenhagen'
testString "Script should welcome hosts" ./hello.sh 'Hello ITU'

echo "All unit tests passed"
