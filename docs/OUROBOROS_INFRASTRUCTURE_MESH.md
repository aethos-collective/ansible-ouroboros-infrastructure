# Ouroboros Infrastructure Mesh

## Purpose

The Ouroboros Infrastructure mesh is the future source of operational state and operational intent for Ouroboros Infrastructure.

It is distinct from Æonmesh.

## Current state

This repository currently contains static inventory and handwritten playbooks.

Those artifacts remain useful for bootstrapping, maintenance, continuity, and provenance.

They are not the long-term source of truth for Ouroboros Infrastructure.

## Target state

The Ouroboros Infrastructure mesh should eventually know enough about the infrastructure substrate to derive or assemble operational artifacts as needed.

This may include:

- node identity;
- service identity;
- topology;
- reachability;
- routing;
- capabilities;
- desired services;
- current services;
- secrets and IAM boundaries;
- deployment targets;
- remediation needs;
- maintenance intent;
- recovery paths;
- inventory;
- playbooks.

## Derived artifacts

The mesh may eventually derive:

- inventory;
- playbooks;
- host targeting;
- service bindings;
- maintenance operations;
- remediation sequences;
- recovery procedures;
- drift-response plans.

## Relationship to Ansible

Ansible is an execution interface.

The long-term relationship is:

```text
Ouroboros Infrastructure mesh
→ operational state
→ operational intent
→ derived inventory
→ derived playbooks
→ Ansible execution interface
→ check / diff / review
→ apply / converge / remediate
→ observed state returns to the infrastructure mesh
```

## Relationship to Æonmesh

The Ouroboros Infrastructure mesh and Æonmesh begin perpendicular to each other.

Ouroboros Infrastructure owns substrate operations.

Æonmesh owns distributed relational/application coordination.

They may become parallel and interdependent later through explicit bridges and typed crossings, but the infrastructure mesh is not automatically Æonmesh.

## Guardrails

Derived operational artifacts must be inspectable.

Derived inventory and playbooks must preserve provenance.

Generated actions must support review.

Check/dry-run posture should precede apply posture wherever possible.

The mesh must not generate opaque, unreviewable operational actions.
