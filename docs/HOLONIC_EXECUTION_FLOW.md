# Holonic Execution Flow

## Purpose

This document describes how a holon moves from operational intent to Ansible-mediated execution and back into Ouroboros Infrastructure mesh state.

## Principle

A holon expresses or receives intent. The mesh evaluates identity, scope, authority, context, and safety. Ansible executes only through a bounded aperture.

## Early bootstrap flow

Before mesh-derived inventory and playbooks exist, the flow is manual and documentation-heavy.

```text
holon identifies need
→ operator selects static inventory and handwritten playbook
→ Ansible check/diff
→ review
→ apply if authorized
→ result documented
→ lessons feed future derivation model
```

This mode is valid, but transitional.

## Mature mesh-derived flow

In mature form:

```text
holon expresses intent
→ mesh identifies holon and authority
→ mesh resolves target scope
→ mesh derives or selects inventory
→ mesh derives, selects, or assembles playbook
→ execution contract is produced
→ Ansible runs check/diff
→ review posture is satisfied
→ Ansible applies if authorized
→ result returns to mesh
→ holon state and infrastructure state update
```

## Holon classes

### Device holon

A device holon may request self-maintenance or bootstrap actions for itself.

Examples:

- check own reachability;
- update local packages;
- restart local service;
- enroll in mesh prerequisites;
- report health.

### Person holon

A person holon may request operations within their delegated authority.

Examples:

- bootstrap a personal node;
- rotate personal operator credentials;
- recover personal services;
- request local backup restoration.

### Household or local-cell holon

A household or local-cell holon may manage local nodes and services within a bounded domain.

Examples:

- enroll a spare device;
- deploy local sync service;
- maintain local mesh routing;
- recover home infrastructure.

### Project holon

A project holon may manage project-specific infrastructure.

Examples:

- deploy a project runner;
- configure project service dependencies;
- rotate project tokens;
- recover project deployment targets.

### Chapter or community holon

A chapter or community holon may coordinate shared infrastructure within a local or communal scope.

Examples:

- converge chapter services;
- deploy shared observability;
- recover local service cluster;
- coordinate maintenance windows.

### Organization holon

An organization holon may propose or approve larger-scope operations.

Examples:

- approve credential rotation;
- authorize fleet-wide update;
- coordinate service migration;
- set policy that subordinate holons execute locally.

### Federation holon

A federation holon should usually avoid direct raw execution.

It may propose, sign, coordinate, or delegate operations that member holons review and execute within their own boundaries.

## Authority gradient

Smaller holons may often perform self-maintenance.

Larger holons may often propose, approve, delegate, or coordinate rather than directly execute.

Authority should not automatically increase with scale. Larger scale increases blast radius and therefore review burden.

## Execution modes

Possible modes include:

- check-only;
- diff-only;
- review-required;
- apply-capable;
- delegated apply;
- emergency recovery;
- rollback;
- teardown.

Each mode requires explicit authorization.

## Return path

Execution results must feed back into the mesh.

Return data may include:

- changed state;
- unchanged state;
- failures;
- unreachable nodes;
- logs;
- facts;
- drift signals;
- remediation needs;
- audit records;
- future derivation hints.

## Prohibition

No holon may use Ansible as an unbounded imperative shell.

No holon may bypass scope, secrets, review, provenance, or return-path requirements.
