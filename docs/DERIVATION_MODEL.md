# Derivation Model

## Purpose

This document defines how current static Ansible artifacts relate to the future Ouroboros Infrastructure operational ledger and mesh.

## Current artifacts

Current repository artifacts include:

- static Ansible inventory;
- handwritten playbooks;
- host variables;
- group variables;
- role and service assumptions;
- bootstrap and maintenance tasks.

These artifacts are valuable. They preserve working lineage and prototype evidence.

They are not the long-term source of truth.

## Future direction

The future Ouroboros Infrastructure mesh may derive or assemble operational artifacts from operational ledger state and operational intent.

This includes:

- inventory derivation;
- playbook derivation;
- service binding derivation;
- host targeting derivation;
- remediation sequence derivation;
- recovery path derivation;
- execution-view derivation;
- Ansible Runner-compatible view derivation.

See `docs/OPERATIONAL_LEDGER_MODEL.md`, `docs/LEDGER_DERIVED_INVENTORY.md`, `docs/LEDGER_DERIVED_PLAYBOOKS.md`, and `docs/LEDGER_DERIVED_EXECUTION_VIEWS.md`.

## Inventory derivation

Inventory should eventually be derived from substrate knowledge such as:

- known nodes;
- node identities;
- node reachability;
- overlay addresses;
- service roles;
- group membership;
- capabilities;
- location or topology class;
- IAM and secrets eligibility;
- maintenance state.

Static inventory remains a bootstrap and example form until the mesh can derive it reliably.

## Playbook derivation

Playbooks should eventually be generated, assembled, selected, or parameterized from operational intent.

Operational intent may include:

- bootstrap this node;
- provision this service;
- repair this failure;
- rotate this credential;
- converge this host;
- reconcile this drift;
- recover this service;
- update this runtime;
- reconfigure this topology edge.

Handwritten playbooks remain a valid corpus, but over time they should become reusable primitives, templates, examples, or fallback paths rather than the sole expression of operational intent.

## Execution-view derivation

Inventory and playbooks may be materialized into scoped execution views.

StorageGraft may provide the path-space materialization layer for those views.

See `docs/STORAGEGRAFT_MATERIALIZATION_LAYER.md` and `docs/ANSIBLE_RUNNER_EXECUTION_VIEW.md`.

## Review and provenance

Derived artifacts must preserve provenance.

A derived inventory, playbook, or execution view should be able to answer:

- what state generated it;
- what intent generated it;
- what component generated it;
- what operator, holon, or ÆI participated;
- what review posture applies;
- whether it is safe for check mode only or apply mode;
- what materialization path was used;
- what execution adapter consumed it;
- what result returned to the ledger.

## Check before apply

Derived operational artifacts should support check/dry-run posture before execution wherever possible.

Apply posture should remain reviewable and auditable.

## Ansible relationship

Ansible remains a first-class execution interface.

The fact that inventory and playbooks may be derived later does not demote Ansible. It changes Ansible's role from source-of-truth repository to execution grammar and operational adapter.

## StorageGraft relationship

StorageGraft is not the derivation engine.

StorageGraft materializes already-derived, already-authorized operational views into filesystem-shaped path-space for execution adapters.
