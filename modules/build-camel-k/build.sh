/bin/bash
-lc
mkdir -p /go/src/github.com/apache/ \
    && mv /camel-k-$CAMEL_K_TAG /go/src/github.com/apache/camel-k \
    && cd /go/src/github.com/apache/camel-k \
    && ls \
    && ls /go/src/github.com/apache/camel-k/vendor \
    && make codegen set-version VERSION=${CAMEL_K_VERSION} \
        RUNTIME_VERSION=${CAMEL_K_RUNTIME_VERSION} \
        BASE_IMAGE=registry.access.redhat.com/ubi8/openjdk-11:1.10 \
        IMAGE_NAME=${IMAGE_NAME} \
    && sed -i 's/-mod=vendor //g' /go/src/github.com/apache/camel-k/Makefile \
    && sed -i 's/-mod=vendor //g' /go/src/github.com/apache/camel-k/pkg/resources/resources_support.go \
    && go generate ./pkg/... \
    && make build-kamel