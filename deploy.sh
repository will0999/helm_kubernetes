#!/bin/bash

helm dependency update
# Deploy Redis
#helm install redis bitnami/redis -f Redis/config/values.yaml

# Deploy Guestbook
#helm install guestbook Guestbook -f Guestbook/config/values.yaml
#!/bin/bash

# Deploy Redis
helm install redis bitnami/redis -f Guestbook/charts/redis/values.yaml

# Deploy Guestbook com Redis
helm install guestbook Guestbook -f Guestbook/values.yaml
