
# Id: CSPT-1.1.2
# Status: Proposed
# Service: Kubernetes Pod
# Components:
#   - Files
# STRIDE:
#   - Elevation of privilege
#   - Information disclosure
# References:
#   - https://kubernetes.io/docs/admin/authentication/#service-account-tokens


Feature: File in pod that contains service account token
  In order to obtain sensitive information about the target
  As an attacker
  I want the target to have local file inclusion vulnerability that I can exploit


  Scenario: Local file inclusion
    Given a container, running code with local file inclusion vulnerability
    And the hacker exploited the vulnerability to read the local file with the service account token
    And Kubernetes API endpoint is know to the attacker
    Then the attacker can access Kubernetes API using the token, with the same permissions as the service account

    Examples: Data types
      | Secrets           |
      | Nodes             |
      | Containers        |
      | Pods              |