#!/bin/bash

COMPILER_PATH="compiler.jar"

NAME="armengine"
VERSION="0.1.0"
RASHIR="js"

FILE_NAME=$NAME-$VERSION.$RASHIR
FILE_NAME_WITHOUT_VERSION=$NAME.$RASHIR

#COMPILATION_LEVEL="WHITESPACE_ONLY"
COMPILATION_LEVEL="SIMPLE_OPTIMIZATIONS"
#COMPILATION_LEVEL="ADVANCED_OPTIMIZATIONS"

echo "$FILE_NAME"
java -jar COMPILER_PATH --js ArmContext/armcontext.js --js ArmGraph/armgraph.js --compilation_level "$COMPILATION_LEVEL" --language_in ECMASCRIPT5 --js_output_file ./$FILE_NAME

echo "$FILE_NAME_WITHOUT_VERSION"
cp "$FILE_NAME" "$FILE_NAME_WITHOUT_VERSION"