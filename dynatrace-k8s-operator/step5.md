# Install the Dynatrace OneAgent Operator

Create the secret holding API and PaaS tokens for authenticating to the Dynatrace cluster. The name of the secret is important in a later step when you configure the custom resource (.spec.tokens). In the following code-snippet the name is oneagent. Be sure to replace API_TOKEN and PAAS_TOKEN with the values captured earlier.

`kubectl -n dynatrace create secret generic oneagent --from-literal="apiToken=API_TOKEN" --from-literal="paasToken=PAAS_TOKEN"` {{copy}}

confirm that your secret has been created

`kubectl -n dynatrace describe secret oneagent`

Note that you will not be able to see your secrets as they are encoded in base64 and can only be seen when bound to a container.



