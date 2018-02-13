
# Id: CSPT-1.1.1
# Status: Proposed
# Service: Kubernetes Pod
# Components:
#   - Environment Variables
# STRIDE:
#   - Elevation of privilege
#   - Information disclosure
# References:
#   - https://kubernetes.io/docs/tasks/inject-data-application/define-environment-variable-container/


Feature: Environment variables contains sensitive information
  In order to obtain sensitive information about the target
  As an attacker
  I want the target to have inappropriately placed sensitive information in Environment Variables that I can access


  Scenario Outline: Access via 3rd party
    Given a library that collects all environment variables for debugging purposes
    And the library print them or send them to 3rd party
    Then the sensitive information is exposed for attackers to read them

    Examples: Data types
      | data-type         |
      | password          |
      | API key           |
      | X.509 private key |
      | SSH private key   |
      | Internal URL      |