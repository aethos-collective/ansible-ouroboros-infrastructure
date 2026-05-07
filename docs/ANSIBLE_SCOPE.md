# Ansible Scope

## Purpose

This document defines what Ansible is responsible for in this repository and what it must not be assumed to own.

## Current scope

This repository currently uses Ansible through static inventory and handwritten playbooks.

Current valid responsibilities include:

- node bootstrapping;
- base system provisioning;
- package installation;
- service deployment;
- service configuration;
- configuration management;
- maintenance;
- recovery;
- remediation;
- repeatable operator-driven execution;
- inventory-driven orchestration.

## Future scope

In the future, Ansible may execute artifacts derived from the Ouroboros Infrastructure mesh.

Future valid responsibilities may include:

- executing derived inventory;
- executing derived playbooks;
- consuming derived host variables;
- consuming derived service bindings;
- applying derived remediation plans;
- applying derived recovery plans;
- reporting execution results back to the infrastructure mesh.

## Holonic scope

When a holon uses Ansible, its scope must be bounded by an execution contract.

See `docs/EXECUTION_CONTRACT.md` and `docs/HOLONIC_EXECUTION_FLOW.md`.

## Non-owned responsibilities

Ansible does not own:

- the complete source of truth;
- the full infrastructure mesh;
- complete runtime state;
- complete observability;
- complete IAM;
- complete secrets management;
- trust or attestation semantics;
- nomadic identity semantics;
- Æonmesh relational/application coordination;
- TrustSphere consent, attestation, provenance, or bounded-authority logic;
- all future APIs;
- all dashboards;
- all deployment models;
- all execution backends.

## Static artifacts

Static inventory and handwritten playbooks are current bootstrap and maintenance artifacts.

They must be preserved and audited before refactoring.

They are not automatically canonical infrastructure truth.

## Derived artifacts

Derived inventory and derived playbooks should remain:

- inspectable;
- reviewable;
- provenance-bearing;
- auditable;
- compatible with check/diff posture where possible;
- stoppable by an operator.

## Scope guardrail

Do not use Ansible scope documents to authorize behavior changes.

Functional changes require separate issues and review.
