# Bootstrap Model

## Purpose

This document defines the bootstrap role of the Ansible adapter.

Bootstrap is the phase in which the infrastructure does not yet have enough living substrate state to derive all inventory, playbooks, and operational intent.

## Bootstrap premise

Before the Ouroboros Infrastructure mesh is mature, static and handwritten artifacts remain necessary.

This includes:

- static inventory;
- handwritten playbooks;
- operator-maintained variables;
- bootstrap host assumptions;
- local connection assumptions;
- manual secrets handoff;
- recovery notes;
- transitional service assumptions.

## Bootstrap responsibilities

The Ansible adapter may bootstrap:

- base operating system configuration;
- packages;
- users and groups;
- SSH access;
- mesh networking prerequisites;
- service prerequisites;
- Forgejo or other source-control services;
- observability prerequisites;
- secrets/IAM prerequisites;
- container/runtime prerequisites;
- emergency recovery paths.

## Bootstrap to mesh transition

The long-term transition is:

```text
static bootstrap material
→ working substrate
→ observed substrate state
→ infrastructure mesh state
→ derived inventory
→ derived playbooks
→ Ansible execution interface
```

## Preservation rule

Bootstrap artifacts are not trash.

They may preserve:

- working lineage;
- operational memory;
- known-good sequences;
- local constraints;
- old topology assumptions;
- recovery affordances;
- prototype evidence.

They should be audited and classified before removal or refactoring.

## Demotion rule

A bootstrap artifact may eventually be demoted into:

- example material;
- template material;
- fallback material;
- recovery material;
- documentation;
- generated-artifact test fixture;
- deprecated historical material.

Demotion requires classification, not mechanical deletion.

## Safety posture

Bootstrap paths must avoid committing secrets.

Bootstrap paths must distinguish public examples from private/live topology.

Bootstrap paths must remain reviewable and behavior-conservative until explicitly authorized otherwise.
