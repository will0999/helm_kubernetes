#!/bin/bash

# Update dependency
# helm dependency update

# Deploy Redis
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install redis bitnami/redis -f Redis/config/values.yaml

# Deploy Guestbook com Redis
helm install guestbook Guestbook -f Guestbook/config/values.yaml

#helm repo add bitnami https://charts.bitnami.com/bitnami
#helm install redis bitnami/redis -values Redis/config/values.yaml -n guestbook
#helm install guestbook Guestbook -n guestbook
