# Execution Contract

## Purpose

This document defines the minimum contract for any Ansible-mediated operation requested, reviewed, approved, or executed through a holonic aperture.

The execution contract is the unit of accountability between a holon, the Ouroboros Infrastructure mesh, and the Ansible execution adapter.

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

### Artifact provenance

- What state generated the inventory?
- What state or intent generated the playbook?
- What component derived, selected, or assembled the artifacts?
- What version of the repository, role, collection, or generated artifact applies?

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
- How are logs, facts, changed state, errors, and drift signals returned to the mesh?
- What audit trail is preserved?
- What follow-up action is required?

## Contract states

An execution contract may move through these states:

```text
proposed
→ scoped
→ derived
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

It should bind holon identity, authority, scope, generated inventory, generated playbook, review posture, execution result, and mesh return path.

## Prohibition

Do not apply Ansible operations when the acting holon, target scope, secrets posture, review posture, and return path are unknown.
