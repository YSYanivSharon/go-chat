#!/bin/bash

PATH="$PATH:$(go env GOPATH)/bin"
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
cd "$SCRIPT_DIR" || exit
protoc --go_out=../client/ --go-grpc_out=../client/ chat-service.proto
protoc --go_out=../server/ --go-grpc_out=../server/ chat-service.proto
