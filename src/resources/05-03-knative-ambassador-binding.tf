# TODO: Knative - Ambassador Binding

# kubectl patch clusterrolebinding ambassador \
#   -patch '{"subjects":[{"kind": "ServiceAccount", "name": "ambassador", "namespace": "ambassador"}]}'
# kubectl set env --namespace ambassador deployments/ambassador AMBASSADOR_KNATIVE_SUPPORT=true
# kubectl patch configmap/config-network \
#   --namespace knative-serving \
#   --type merge \
#   --patch '{"data":{"ingress.class":"ambassador.ingress.networking.knative.dev"}}'
