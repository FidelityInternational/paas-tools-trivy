FROM alpine:3
ENV TRIVY_VERSION="0.21.1"
RUN apk --no-cache add ca-certificates git jq curl

RUN curl -fL "https://github.com/aquasecurity/trivy/releases/download/v${TRIVY_VERSION}/trivy_${TRIVY_VERSION}_Linux-64bit.tar.gz" | tar -zx -C /usr/local/bin
