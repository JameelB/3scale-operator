#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

vendor/k8s.io/code-generator/generate-groups.sh \
deepcopy \
github.com/integr8ly/3scale-operator/pkg/generated \
github.com/integr8ly/3scale-operator/pkg/apis \
3scale:v1alpha1 \
--go-header-file "./tmp/codegen/boilerplate.go.txt"
