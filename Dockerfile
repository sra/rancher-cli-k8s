FROM lachlanevenson/k8s-kubectl:v1.11.0 AS k8scli

FROM rancher/cli:v2.0.2

COPY --from=k8scli /usr/local/bin/kubectl /usr/local/bin

ENTRYPOINT []
