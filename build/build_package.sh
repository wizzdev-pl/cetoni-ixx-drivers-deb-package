#!/bin/bash

set -e  # Exit on the very first error

SOURCE_DIR_RELATIVE="`dirname \"$0\"`"
SOURCE_DIR="`realpath ${SOURCE_DIR_RELATIVE}`"
BIN_DIR="`pwd`"


main()
{

cmake ${SOURCE_DIR}/..

make package

}


main