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

In the long term, Ansible should consume operational artifacts derived from the Ouroboros Infrastructure mesh.

These may include:

- derived inventory;
- derived playbooks;
- derived host targeting;
- derived variables;
- derived remediation sequences;
- derived recovery procedures.

## Execution posture

Ansible execution should support:

- check posture;
- diff posture;
- review posture;
- apply posture;
- convergence posture;
- remediation posture;
- recovery posture.

## Not sole authority

Ansible does not own:

- the full infrastructure source of truth;
- all runtime state;
- all topology knowledge;
- all IAM state;
- all telemetry;
- all service registry state;
- all operational intent;
- all future control surfaces.

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
