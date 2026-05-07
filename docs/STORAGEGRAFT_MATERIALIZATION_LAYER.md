# StorageGraft Materialization Layer

## Purpose

This document defines StorageGraft as the path-space materialization layer for Ouroboros Infrastructure execution views.

StorageGraft begins from a local storage problem: making one filesystem substrate usable through another path-space. In Ouroboros Infrastructure, that pattern generalizes into materializing ledger-derived operational state into scoped filesystem views consumable by execution adapters.

## Core invariant

StorageGraft materializes an already-authorized operational view.

StorageGraft does not create authority.

StorageGraft is not the operational ledger, not the derivation engine, not Ansible, and not the execution runner.

## Role in the execution chain

```text
operational ledger
→ execution contract
→ derived inventory
→ derived playbook
→ scoped variables / secrets / artifacts
→ StorageGraft materialization
→ execution adapter
→ result returns to ledger
```

## Materialization meaning

Materialization means presenting selected records, artifacts, variables, playbooks, inventories, and execution metadata as a filesystem-shaped view.

That view may be temporary, execution-specific, read-only, writable only in selected paths, isolated in a mount namespace, or archived after execution.

## Ansible-shaped views

Ansible and Ansible Runner already consume filesystem-shaped material:

- inventory;
- host variables;
- group variables;
- playbooks;
- roles;
- collections;
- templates;
- files;
- environment data;
- artifact directories.

StorageGraft can expose ledger-derived versions of these materials without requiring the ledger itself to look like an Ansible repository.

## Possible implementation mechanisms

Future implementations may use one or more of:

- ordinary directories;
- generated files;
- bind mounts;
- read-only bind mounts;
- mount namespaces;
- systemd unit-level bind paths;
- temporary filesystems;
- content-addressed artifact snapshots;
- later layered view mechanisms where justified.

This document does not choose a final implementation.

## Bind mount rule

A bind mount may make material visible in a new path-space.

It must not expand authority beyond the execution contract that authorized the view.

## Mount namespace rule

Mature execution should prefer isolated path-space where practical.

An execution adapter should only see the materialized view needed for its contract rather than the entire host filesystem.

## Read-only preference

Read-only materialization should be preferred for generated inventory, generated playbooks, and immutable artifact inputs.

Writable paths should be explicit and limited, such as execution artifacts, logs, caches, or result directories.

## Secrets posture

StorageGraft must not turn secrets into ordinary repository content.

Secrets should be injected, mounted, delegated, or referenced according to the execution contract and secrets boundary.

Generated views must distinguish public material, private material, secrets material, and result material.

## Lifecycle

A materialized execution view should have a lifecycle:

```text
requested
→ derived
→ materialized
→ inspected
→ checked
→ reviewed
→ applied if authorized
→ result captured
→ archived or destroyed
```

## Relationship to holons

A holon interacts with Ansible through a bounded aperture.

StorageGraft is one way to make that aperture concrete in path-space.

Different holons may receive different materialized views from the same operational ledger.

## Non-goals

This document does not implement StorageGraft.

It does not change mounts on any machine.

It does not change inventory or playbooks.

It does not add Ansible Runner automation.

It defines the materialization model that later implementations must respect.
