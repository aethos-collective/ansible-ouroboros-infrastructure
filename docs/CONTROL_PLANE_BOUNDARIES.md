# Control Plane Boundaries

## Purpose

This document defines the boundary between Ansible execution and broader Ouroboros Infrastructure control-plane concerns.

## Control-plane meaning

A control plane observes, decides, coordinates, or directs infrastructure behavior.

Ansible can participate in control-plane behavior, but this repository is not the whole control plane for Ouroboros Infrastructure.

## Ansible control-plane participation

Ansible may participate by:

- applying declared configuration;
- executing playbooks;
- targeting known hosts;
- running maintenance procedures;
- performing remediation steps;
- performing recovery steps;
- reporting execution results;
- supporting check and diff review flows.

## What Ansible does not own

Ansible does not own the complete control plane.

It does not own:

- discovery of all nodes;
- canonical topology state;
- canonical service registry state;
- canonical IAM state;
- canonical observability state;
- canonical secrets state;
- trust and attestation logic;
- nomadic identity logic;
- Æonmesh relational/application coordination;
- TrustSphere consent, attestation, or bounded-authority logic;
- every future execution backend.

## Future control-plane sources

Future control-plane behavior may involve:

- the Ouroboros Infrastructure mesh;
- generated inventory;
- generated playbooks;
- source-of-truth systems;
- Forgejo or GitOps-style review surfaces;
- secrets/IAM systems;
- observability systems;
- ÆI/operator interfaces;
- APIs;
- dashboards;
- event-driven remediation systems.

## Boundary rule

Ansible may execute operational intent.

Ansible may help express operational intent.

Ansible must not be treated as the sole origin of operational intent.

## Safety posture

Any future control-plane path that generates Ansible artifacts must preserve:

- provenance;
- inspectability;
- reviewability;
- check/diff posture before apply where possible;
- auditability;
- operator override and halt paths.
