# Install the Dynatrace OneAgent Operator

## Create 'dynatrace' namespace
`kubectl create namespace dynatrace`{{execute}}

## Deploy OneAgent Operator
`LATEST_RELEASE=$(curl -s https://api.github.com/repos/dynatrace/dynatrace-oneagent-operator/releases/latest | grep tag_name | cut -d '"' -f 4)`{{execute}}

`kubectl create -f https://raw.githubusercontent.com/Dynatrace/dynatrace-oneagent-operator/$LATEST_RELEASE/deploy/kubernetes.yaml`{{execute}}

## Validate a successful deployment
`kubectl -n dynatrace get pods -w`{{execute}}

When successfully deployed, select <kbd>Ctrl</kbd>+<kbd>C</kbd>

If the status for the oneagent-operator pod is anything other than **running**, you can troubleshoot with the following command.
`kubectl -n dynatrace logs -f deployment/dynatrace-oneagent-operator`{{execute}}

select <kbd>Ctrl</kbd>+<kbd>C</kbd> to exit
