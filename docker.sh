#!/bin/bash

docker run \
    --rm \
    --volume "$(pwd)/:/src" \
    --workdir "/src/" \
    swift:5.3.1-amazonlinux2 \
    swift build --product SwiftAwsLambdaStarter -c release -Xswiftc -static-stdlib 
