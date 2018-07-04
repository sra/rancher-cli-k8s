# rancher-cli-k8s
Rancher v2 CLI with kubectl

Just needed a version of the rancher v2 cli with kubectl installed also

Examples:

If you have done a `rancher login` on the host, you can map the `.rancher` folder into the container to share credentials.

`docker run -rm -it -v ~/.rancher:/root/.rancher sra/rancher-cli-k8s rancher kubectl get nodes`

Otherwise, you'll need to login using an API token from your rancher gui. In a build scenario You could create a new API key from your account in the rancher2 GUI and then expose it via environment variable and then:

```
rancher login "$RANCHER_SERVER_URL" -t "$RANCHER_API_TOKEN"
rancher kubectl get nodes
...
```
