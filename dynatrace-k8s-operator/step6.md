# Install the Dynatrace OneAgent Operator

Edit the cr.yaml code snippet in the editor screen.  The rollout of the Dynatrace OneAgent is goverened by a custom resource of type "OneAgent".  You will need to replace the 'ENVIRONMENTID' with your Tenant ID in your Tenant URL.

`sed -i 's/ENVIRONMENTID/'"$ENVIRONMENTID"'/' dynatrace/cr.yaml`{{execute}} 

You can adjust for additional parameters if needed in your own environment, however for now we will just apply the defaults.

`kubectl create -f cr.yaml`{{execute}}

To validate everything is working correctly, you can watch the pods deploy:

`kubectl -n dynatrace get pods -w`{{execute}}

When successfully deployed, select <kbd>Ctrl</kbd>+<kbd>C</kbd>

If the status for the oneagent pods are anything other than **running**, you can troubleshoot by pasting the following command in the terminal replacing 'ONEAGENT_POD' with one of the OneAgent pod names from above.

`kubectl -n dynatrace logs -f ONEAGNENT_POD`{{copy}}

select <kbd>Ctrl</kbd>+<kbd>C</kbd> to exit