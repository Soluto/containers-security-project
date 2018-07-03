
# Id: CSPT-1.1.2
# Status: Proposed
# Service: Service Account
# STRIDE:
#   - Elevation of privilege
#   - Information disclosure
# References:
#   - https://kubernetes.io/docs/admin/authentication/#service-account-tokens


Feature: Service Account token exposure
  In order to obtain sensitive information about the target
  As an attacker
  I want to obtain service account token

  Scenario: Service Account token exposure
    Given leaked service account token
    Then the attacker can access Kubernetes API using the token, with the same permissions as the service account for unlimited time

    Examples: Data types
      | Secrets           |
      | Nodes             |
      | Containers        |
      | Pods              |