# Prepare Dynatrace tokens for OneAgent Operator

OneAgent Operator requires two different tokens for interacting with Dynatrace servers. These two tokens are made available to OneAgent Operator by means of a Kubernetes secret as explained at a later step.

Within your tenant go to:

[ENVIRONMENTID] ... environmentid

- [API Token](https://www.dynatrace.com/support/help/reference/dynatrace-concepts/what-is-an-access-token/): `https://ENVIRONMENTID.live.dynatrace.com/settings#settings/integration/apikeys`{{copy}}

create API token and update API_TOKEN in 'dynatrace/dynatrace.txt' within editor panel for later reference

- [PAAS Token](https://www.dynatrace.com/support/help/technology-support/cloud-platforms/kubernetes/installation-and-operation/full-stack/deploy-oneagent-on-kubernetes/#expand-1367how-to-get-your-paas-token): `https://ENVIRONMENTID.live.dynatrace.com/settings#settings/integration/paastokens`{{copy}}

create PAAS token and update PAAS_TOKEN in 'dynatrace/dynatrace.txt' within editor panel for later reference