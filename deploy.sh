#!/bin/bash

# Update dependency
helm dependency update

# Deploy Redis
helm install redis bitnami/redis -f Redis/config/values.yaml

# Deploy Guestbook com Redis
helm install guestbook Guestbook -f Guestbook/config/values.yaml
