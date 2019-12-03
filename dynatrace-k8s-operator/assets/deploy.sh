#!/bin/bash
cd /root
cat <<EOF>~/dynatrace.sh  
#!/bin/bash
DYNATRACE_URL="<your dynatrace tenant url>"
API_TOKEN="<dynatrace API Token>"
PAAS_TOKEN="<dynatrace PaaS Token>"
EOF

# May need to post slides or images to the git repo