#!/bin/sh

../subprojects/grpc-v1.54.2/build-x86_64/bin/protoc --proto_path=. --cpp_out=. --grpc_out=. --plugin=protoc-gen-grpc=../subprojects/grpc-v1.54.2/build-x86_64/bin/grpc_cpp_plugin helloworld.proto

