#!/usr/bin/env bash

set -ex

source hack/common.sh

# create symbolic link on client-go package to avoid duplication
rm -rf ${KUBEVIRT_DIR}/vendor/kubevirt.io/client-go
mkdir -p ${KUBEVIRT_DIR}/vendor/kubevirt.io
ln -s ../../staging/src/kubevirt.io/client-go/ ${KUBEVIRT_DIR}/vendor/kubevirt.io/client-go

# create symbolic link on api package to avoid duplication
rm -rf ${KUBEVIRT_DIR}/vendor/kubevirt.io/api
mkdir -p ${KUBEVIRT_DIR}/vendor/kubevirt.io
ln -s ../../staging/src/kubevirt.io/api/ ${KUBEVIRT_DIR}/vendor/kubevirt.io/api
