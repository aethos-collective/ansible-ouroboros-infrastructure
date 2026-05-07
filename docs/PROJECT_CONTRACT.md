# Project Contract

## Purpose

This document defines the operating contract for `ansible-ouroboros-infrastructure`.

The contract exists to prevent drift while the repository transitions from inherited infrastructure automation into an Ouroboros Infrastructure management interface.

## Governing posture

This repository is the Ansible management interface for Ouroboros Infrastructure.

It is not the whole infrastructure, not the only future interface, and not the final source of operational truth.

Changes must preserve this distinction.

## Change-control invariants

### No silent rewrites

Do not silently rename, rewrite, restructure, or reframe existing material.

When a change alters meaning, scope, naming, or architectural placement, name the change explicitly in the issue, PR body, or documentation.

### Amend before replacing

Prefer append, amend, classify, and cross-link before replacing existing material.

Replacement is allowed only when the old material is clearly classified as superseded, deprecated, unsafe, private, misleading, or no longer applicable.

### Preserve provenance

Inherited material is provenance-bearing until audited.

Do not delete inherited `ilyfam`, host, path, service, inventory, variable, or role assumptions without classification.

### Behavior changes require explicit authorization

Documentation PRs must not change runtime behavior.

Functional changes require an issue that explicitly authorizes the behavior change.

A PR that changes Ansible behavior must say so clearly.

### Keep PRs reviewable

Prefer small, coherent PRs that implement one issue or one tightly coupled slice of issues.

Do not bundle identity cleanup, documentation doctrine, inventory refactors, role rewrites, validation tooling, and deployment changes into one PR.

### Protect secrets and private topology

Do not commit secrets.

Do not commit private/live inventory unless explicitly designed, reviewed, and approved for that purpose.

Do not expose private topology, credentials, tokens, certificates, hostnames, addresses, or operational access details through examples or documentation.

### Classify before refactoring

Before refactoring inherited material, classify it as one or more of:

- historical provenance;
- current identity drift;
- live technical assumption;
- secrets-adjacent assumption;
- host or domain assumption;
- inventory assumption;
- role or service assumption;
- example candidate;
- template candidate;
- generated-artifact candidate;
- private/live material;
- deprecated material;
- unsafe material.

### Derived artifacts must remain inspectable

Future ledger-derived inventory, playbooks, and execution views must remain inspectable, reviewable, and auditable.

The system must not produce opaque operational artifacts that operators cannot understand.

### StorageGraft materialization must not create authority

A materialized path does not imply permission.

Authority comes from identity, delegation, execution contract, review posture, and applicable boundaries.

### Connector and workspace discipline

When repository work depends on external workspace doctrine, identify the source surface.

If Notion and GitHub diverge, identify the divergence before proceeding.

Notion may hold broader architecture doctrine. GitHub holds repository-local implementation doctrine. Neither should silently overwrite the other.

## Repository-local canon

The repository-local canon includes:

- `README.md`;
- `docs/PROJECT_CHARTER.md`;
- this document;
- AOOI tracker issues;
- merged architecture and boundary documents;
- accepted PRs and their discussions.

## Non-goals

This contract does not introduce process theater.

It does not require heavy ceremony for every small correction.

It does not prevent experimental branches.

It does not authorize runtime automation.

It defines the minimum discipline needed to keep transition work coherent, reviewable, and provenance-aware.
