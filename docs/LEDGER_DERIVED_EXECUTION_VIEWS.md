# Ledger-Derived Execution Views

## Purpose

This document defines ledger-derived execution views for Ouroboros Infrastructure.

A ledger-derived execution view is a scoped, provenance-bearing filesystem-shaped view prepared for an execution adapter from operational ledger state and operational intent.

## Core invariant

An execution view is not global infrastructure truth.

It is a bounded aperture for a specific execution contract, holon, target scope, review posture, and execution adapter.

## Inputs

A ledger-derived execution view may be assembled from:

- substrate-state records;
- operational intent records;
- execution contracts;
- inventory derivation results;
- playbook derivation results;
- service binding records;
- topology records;
- role or task corpus references;
- secrets eligibility records;
- review records;
- artifact records.

## Output shape

The output should be a filesystem-shaped view that can be consumed by a specific adapter.

For Ansible, this may include:

- inventory material;
- playbook material;
- host variables;
- group variables;
- role material;
- collection material;
- environment material;
- artifact output paths;
- execution metadata.

## View classes

### Check view

A check view supports dry-run or validation posture.

It may be intentionally incapable of apply posture.

### Diff view

A diff view supports comparison between expected and proposed changes.

### Review view

A review view is packaged for human or ÆI inspection before apply posture.

### Apply view

An apply view is authorized for execution against target substrate.

It must preserve stricter provenance, secrets, and review requirements than check-only views.

### Recovery view

A recovery view is prepared for remediation or restoration after failure.

It may require emergency review semantics but must still preserve provenance.

## View scoping

Execution views must be scoped by:

- holon identity;
- target inventory;
- operational intent;
- authority and delegation;
- secrets boundary;
- review posture;
- execution posture;
- result return path.

## Materialization

StorageGraft may materialize an execution view into path-space.

Materialization may use ordinary directories, generated files, bind mounts, read-only bind mounts, mount namespaces, unit-level filesystem isolation, or later layered mechanisms.

## View lifecycle

```text
intent proposed
→ contract scoped
→ inventory derived
→ playbook derived
→ view assembled
→ view materialized
→ check / diff / review
→ apply if authorized
→ result captured
→ view archived or destroyed
→ ledger updated
```

## Archival

An execution view may be disposable, but its provenance should not disappear.

The ledger should preserve enough information to reconstruct or audit:

- what view existed;
- what it contained;
- what generated it;
- what consumed it;
- what happened during execution;
- what result returned.

## Safety posture

Execution views must not become an authority laundering mechanism.

A materialized path must not imply permission.

Permission comes from the execution contract, not from filesystem visibility alone.

## Non-goals

This document does not implement execution views.

It does not create mount behavior.

It does not change Ansible behavior.

It defines the model for future implementation.
