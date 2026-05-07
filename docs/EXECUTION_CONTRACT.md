# Execution Contract

## Purpose

This document defines the minimum contract for any Ansible-mediated operation requested, reviewed, approved, or executed through a holonic aperture.

The execution contract is the unit of accountability between a holon, the Ouroboros Infrastructure operational ledger, the StorageGraft materialization layer, and the Ansible execution adapter.

## Required fields

An execution contract should be able to answer the following questions before apply posture is allowed.

### Acting identity

- Which holon is requesting the operation?
- Which human, ÆI, service, or process is acting through the holon?
- What identity proof or authentication context applies?

### Authority and delegation

- Is the holon acting for itself?
- Is it acting under delegated authority?
- What parent, peer, operator, federation, or TrustSphere relation grants authority?
- What revocation or halt path exists?

### Target scope

- Which nodes, groups, services, repositories, secrets, inventories, or topology regions may be affected?
- Is the target scope local, project-level, chapter-level, organization-level, federation-level, or global?
- What blast radius applies?

### Operational intent

- What does the holon want to accomplish?
- Is the intent bootstrap, maintenance, remediation, recovery, deployment, migration, credential rotation, convergence, or teardown?
- Is the intent generated, selected, requested manually, or proposed by ÆI?
- What operational ledger record or provisional record captures the intent?

### Ledger posture

- Which substrate-state records are relevant?
- Which intent records are relevant?
- Which artifact records are generated or consumed?
- Which result records should be produced after execution?
- What current view or ledger snapshot is this contract based on?

### Artifact provenance

- What state generated the inventory?
- What state or intent generated the playbook?
- What component derived, selected, or assembled the artifacts?
- What version of the repository, role, collection, or generated artifact applies?
- Which execution view materializes those artifacts?

### Materialization posture

- Is StorageGraft used to materialize an execution view?
- What materialization path or view ID applies?
- Is the view read-only, partially writable, or writable only for artifacts?
- Is a mount namespace, unit-level bind path, temporary filesystem, or ordinary directory involved?
- When does the materialized view expire?

### Secrets posture

- What secrets are required?
- Which system provides those secrets?
- Are they human/operator credentials, workload credentials, tokens, certificates, vault material, or generated short-lived credentials?
- Is access read-only, use-only, injected, delegated, or operator-supplied?

### Review posture

- Is the operation check-only?
- Is diff required?
- Is human approval required?
- Is ÆI review allowed or required?
- Is quorum, maintainer approval, or TrustSphere attestation required?
- Is apply allowed?

### Execution posture

- Which execution backend is used?
- Which runner or control node performs the work?
- Is execution local, remote, delegated, generated, or manually invoked?
- What timeout, retry, rollback, or halt conditions apply?

### Result return path

- Where do execution results go?
- How are logs, facts, changed state, errors, and drift signals returned to the operational ledger?
- What audit trail is preserved?
- What follow-up action is required?

## Contract states

An execution contract may move through these states:

```text
proposed
→ scoped
→ derived
→ materialized
→ check-ready
→ checked
→ review-ready
→ approved
→ apply-ready
→ applied
→ observed
→ archived
```

It may also terminate as:

```text
rejected
halted
expired
superseded
failed
rolled-back
```

## Minimal early contract

In early bootstrap mode, a minimal contract may be documented manually:

- requester;
- target inventory;
- playbook;
- purpose;
- check/diff result;
- approval;
- execution result.

## Mature contract

In mature mesh-derived mode, the contract should be machine-readable and provenance-bearing.

It should bind holon identity, authority, scope, generated inventory, generated playbook, materialized execution view, review posture, execution result, and ledger return path.

See `docs/OPERATIONAL_LEDGER_MODEL.md`, `docs/STORAGEGRAFT_MATERIALIZATION_LAYER.md`, and `docs/LEDGER_DERIVED_EXECUTION_VIEWS.md`.

## Prohibition

Do not apply Ansible operations when the acting holon, target scope, secrets posture, review posture, materialization posture, and return path are unknown.
