# Ansible Execution Interface

## Purpose

This document defines Ansible's role inside Ouroboros Infrastructure.

Ansible is a first-class execution interface, not the whole infrastructure and not the long-term source of truth.

## Current role

Today, this repository contains static inventory and handwritten playbooks.

These provide:

- bootstrap capacity;
- maintenance capacity;
- operational continuity;
- human-readable automation;
- historical lineage;
- prototype evidence.

## Long-term role

In the long term, Ansible should consume operational artifacts derived from the Ouroboros Infrastructure operational ledger and mesh.

These may include:

- derived inventory;
- derived playbooks;
- derived host targeting;
- derived variables;
- derived remediation sequences;
- derived recovery procedures;
- ledger-derived execution views;
- Ansible Runner-compatible execution views.

See `docs/OPERATIONAL_LEDGER_MODEL.md`, `docs/LEDGER_DERIVED_EXECUTION_VIEWS.md`, and `docs/ANSIBLE_RUNNER_EXECUTION_VIEW.md`.

## Execution posture

Ansible execution should support:

- check posture;
- diff posture;
- review posture;
- apply posture;
- convergence posture;
- remediation posture;
- recovery posture.

## Materialized views

StorageGraft may eventually materialize ledger-derived inventory, playbooks, variables, and artifact paths into filesystem-shaped views that Ansible or Ansible Runner can consume.

See `docs/STORAGEGRAFT_MATERIALIZATION_LAYER.md`.

## Not sole authority

Ansible does not own:

- the full infrastructure source of truth;
- all runtime state;
- all topology knowledge;
- all IAM state;
- all telemetry;
- all service registry state;
- all operational intent;
- all future control surfaces;
- the operational ledger;
- the materialization layer.

## Still first-class

Ansible remains a valid and important interface for:

- bootstrapping;
- provisioning;
- configuration management;
- maintenance;
- remediation;
- recovery;
- repeatable operations;
- human-readable execution.

## Safety requirement

Derived Ansible execution must remain inspectable, reviewable, and auditable.

The mesh must not produce opaque playbooks that cannot be understood by operators.

A materialized execution view must not imply authority by filesystem visibility alone. Authority comes from the execution contract, review posture, and applicable boundaries.
