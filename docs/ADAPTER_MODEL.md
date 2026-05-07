# Adapter Model

## Purpose

This document defines the adapter model for `ansible-ouroboros-infrastructure`.

The repository is an Ansible adapter into Ouroboros Infrastructure. It is not the substrate itself, and it is not the long-term source of truth for infrastructure state or operational intent.

## Core distinction

Ouroboros Infrastructure is the substrate.

Ansible is one execution interface into that substrate.

This repository currently stores static inventory and handwritten playbooks. Those artifacts provide bootstrap, maintenance, recovery, and continuity value. They are transitional artifacts, not the final ontology of the infrastructure.

## Adapter definition

An adapter is a tool-specific surface that translates infrastructure state and operational intent into executable operations.

For this repository, the adapter surface includes:

- Ansible inventory;
- Ansible playbooks;
- roles;
- tasks;
- variables;
- collections;
- configuration files;
- operator-facing documentation;
- future generated or derived operational artifacts.

## Derived execution direction

The long-term direction is:

```text
Ouroboros Infrastructure mesh
→ substrate state
→ operational intent
→ derived inventory
→ derived playbooks
→ Ansible execution interface
→ check / diff / review
→ apply / converge / remediate
→ observed state returns to the infrastructure mesh
```

## Adapter responsibilities

The Ansible adapter may responsibly perform:

- bootstrap operations;
- node provisioning;
- base configuration;
- service deployment;
- maintenance;
- recovery;
- remediation;
- repeatable operator-approved execution;
- check/diff review flows;
- generated artifact execution, once derivation exists.

## Adapter non-responsibilities

The Ansible adapter does not own:

- all infrastructure state;
- all topology state;
- all IAM state;
- all observability state;
- all service registry state;
- all secrets state;
- all operational intent;
- the full control plane;
- the future infrastructure mesh;
- every future execution backend.

## Invariant

Ansible is first-class, but not exclusive.

The adapter must remain useful even when other interfaces mature.

Other interfaces must not erase the adapter merely because inventory or playbooks become derived later.
