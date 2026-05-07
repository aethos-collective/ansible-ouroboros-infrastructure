# Ansible Runner Execution View

## Purpose

This document defines how a ledger-derived execution view may be shaped for Ansible Runner.

Ansible Runner is a useful target because it consumes a private data directory containing inventory, project material, environment material, and artifact output paths.

This repository does not implement Ansible Runner automation yet.

## Core invariant

An Ansible Runner execution view is a materialized adapter view.

It is generated from operational ledger state and an execution contract, then shaped for Runner consumption.

It is not the source of truth.

## Candidate directory shape

A future execution view may use a directory shape similar to:

```text
/run/ouroboros/executions/<contract-id>/
  env/
  inventory/
  project/
  roles/
  artifacts/
  metadata/
```

## Directory roles

### env/

Environment material for Runner execution.

This may include controlled environment variables, extra variables, password prompts, settings, or injected execution metadata.

Secrets must remain governed by the execution contract and secrets boundary.

### inventory/

Ledger-derived inventory material.

This may be a generated inventory file, generated inventory directory, or later a dynamic inventory source.

### project/

Ledger-derived or selected project material.

This may include playbooks, role references, templates, files, or assembled execution content.

### roles/

Optional role material or bound role paths.

Roles may come from the repository, a generated artifact, a content-addressed snapshot, or another approved source.

### artifacts/

Execution output material.

This path should capture Runner results, logs, events, status, facts, and other return-path material that can be ingested back into the operational ledger.

### metadata/

Ouroboros-specific metadata.

This may include contract ID, holon identity, derivation records, artifact identifiers, expiration, freshness, review posture, and return-path pointers.

## Execution flow

```text
operational ledger
→ execution contract
→ derived inventory
→ derived playbook
→ StorageGraft materialized Runner view
→ Runner check / diff / review / apply posture
→ artifacts captured
→ result records return to ledger
```

## Check-first posture

Runner views should prefer check-first execution where the playbook supports it.

Apply-capable views should require explicit review posture and authority.

## Artifact return path

Runner artifacts are not merely logs.

They are return-path material for the Ouroboros operational ledger.

A result ingestion process may eventually record:

- execution status;
- return code;
- changed state;
- failed tasks;
- unreachable hosts;
- fact updates;
- event records;
- drift signals;
- remediation needs;
- recovery hints.

## Isolation posture

A mature Runner view should avoid broad filesystem visibility.

Future implementations may use mount namespaces, unit-level bind paths, read-only binds, and explicit writable artifact directories.

## Expiration

Runner execution views should be treated as time-bound.

A view generated for one contract should not silently become reusable authority for a later contract.

## Non-goals

This document does not add Ansible Runner as a dependency.

It does not add a runner configuration.

It does not change playbook invocation.

It does not create execution directories.

It defines the future Runner-compatible view model.
