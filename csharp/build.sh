#!/bin/bash

DIR="$(dirname "${BASH_SOURCE[0]}")"
cd $DIR
(cd ../ && ./gradlew generateCSharpCodecs)
dotnet build -c debug
dotnet build -c release
