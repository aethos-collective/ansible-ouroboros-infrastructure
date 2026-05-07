# Holonic Ansible Aperture

## Purpose

This document defines how a holon may use Ansible inside Ouroboros Infrastructure.

A holon may be a person, device, household, project cell, local chapter, service group, repository, community, organization, federation, or specialized agent.

## Core invariant

A holon does not receive raw Ansible authority.

A holon receives a bounded Ansible aperture shaped by identity, scope, capabilities, delegation, secrets access, review posture, and return path into the Ouroboros Infrastructure mesh.

## Definition

A Holonic Ansible Aperture is a scoped execution opening through which a holon can request, review, approve, or perform Ansible-mediated infrastructure operations according to its identity, authority, substrate context, and return path into the Ouroboros Infrastructure mesh.

## Aperture membranes

Every aperture must preserve the following membranes.

### Identity membrane

The system must know which holon is acting, which human or ÆI is participating, and what identity context applies.

### Scope membrane

The system must know which nodes, services, inventories, variables, roles, or operational domains the holon may affect.

### Capability membrane

The system must know what the holon is capable of requesting or executing: check-only, maintenance, bootstrap, remediation, recovery, deployment, or destructive operations.

### Delegation membrane

The system must know whether the holon is acting for itself, on behalf of another holon, or under authority delegated by a parent, peer, federation, or operator.

### Secrets membrane

The system must know what secrets, credentials, tokens, certificates, or vault material are needed and whether the holon may access them.

### Review membrane

The system must know whether an operation is check-only, diff-only, approval-required, quorum-required, operator-approved, or apply-capable.

### Provenance membrane

The system must record what state, intent, identity, component, and review path produced the execution artifact.

### Return-path membrane

Execution results must return to the Ouroboros Infrastructure mesh as observed state, audit record, telemetry, or operational memory.

## Early mode

In early bootstrap mode, a holon may interact with static inventory and handwritten playbooks under manual review.

```text
holon
→ static inventory / handwritten playbook
→ Ansible check/diff
→ review
→ apply if authorized
→ documented result
```

## Mature mode

In mature mesh-derived mode, a holon expresses intent and receives a scoped Ansible aperture.

```text
holon
→ intent
→ operational ledger state
→ execution contract
→ derived inventory
→ derived playbook
→ StorageGraft materialized execution view
→ Ansible check/diff/review
→ apply if authorized
→ observed result returns to ledger
```

See `docs/OPERATIONAL_LEDGER_MODEL.md`, `docs/STORAGEGRAFT_MATERIALIZATION_LAYER.md`, and `docs/LEDGER_DERIVED_EXECUTION_VIEWS.md`.

## Examples

A device holon may request self-maintenance for its own services.

A household holon may bootstrap a new local node.

A project holon may deploy runner capacity for a repository group.

A chapter holon may recover local infrastructure after failure.

A federation holon may propose operations that subordinate holons execute locally after their own review.

## Materialized aperture

StorageGraft may make a holonic aperture concrete by materializing a scoped execution view into path-space.

A materialized path must not imply authority by itself. Authority comes from identity, delegation, execution contract, review posture, and applicable boundaries.

## Prohibition

Do not grant a holon unscoped Ansible authority.

Do not allow an aperture to bypass identity, scope, secrets, review, provenance, or return-path membranes.
