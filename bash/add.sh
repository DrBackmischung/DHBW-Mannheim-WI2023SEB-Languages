#!/bin/bash

add() {
    echo $(( $1 + $2 ))
}

echo "Sum: $(add 5 7)"
