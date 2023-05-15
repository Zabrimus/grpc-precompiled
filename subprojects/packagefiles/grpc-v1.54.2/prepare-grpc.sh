#!/bin/bash

set -e

# prepare grpc pkg-config directory to match current project layout
GRPC_BUILDDIR=$1
GRPC_VERSION=$2
GRPC_ARCH=$3

if [ -d ${GRPC_BUILDDIR}/lib/pkgconfig ]; then
  exit 0
fi

cp -a ${GRPC_BUILDDIR}/lib/pkgconfig.BUILD_VERSION ${GRPC_BUILDDIR}/lib/pkgconfig
for i in `ls ${GRPC_BUILDDIR}/lib/pkgconfig`; do
    sed -i -E -e "s#/home/runner/work/grpc-precompiled/grpc-precompiled/grpc/build-${GRPC_ARCH}/grpc-${GRPC_VERSION}/build-${GRPC_ARCH}/?#${GRPC_BUILDDIR}/#g" ${GRPC_BUILDDIR}/lib/pkgconfig/$i
done