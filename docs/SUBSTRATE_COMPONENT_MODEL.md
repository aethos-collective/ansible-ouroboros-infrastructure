# Substrate Component Model

## Purpose

This document defines how technologies are classified within Ouroboros Infrastructure.

Technologies are not assigned to architectural layers by product category, ecosystem, distribution model, implementation style, or resemblance to another layer. They are assigned by function.

## Core rule

A component belongs to Ouroboros Infrastructure when it carries substrate responsibility.

Substrate responsibility includes:

- nodes;
- services;
- routing;
- reachability;
- topology;
- deployment;
- provisioning;
- orchestration;
- telemetry;
- registry state;
- secrets;
- IAM;
- execution;
- convergence;
- remediation;
- derived inventory;
- derived playbooks;
- operational provenance.

## Same technology, different role

The same technology may belong to different architectural layers depending on what state it carries and what action it enables.

For example:

- Hypercore carrying infrastructure registry state belongs to Ouroboros Infrastructure.
- Hypercore carrying application coordination history may belong to Æonmesh.
- Holochain carrying node capability claims may belong to Ouroboros Infrastructure.
- Holochain carrying agent-centric application state may belong to Æonmesh.
- Forgejo as sovereign forge and change-control substrate belongs to Ouroboros Infrastructure.
- Forgejo activity streams may become Æonmesh-relevant when treated as distributed collaboration history.

## Boundary with adjacent layers

Ouroboros Infrastructure owns substrate function.

Æonmesh owns distributed relational/application coordination function.

TrustSphere owns trust, attestation, consent, provenance, requisition, fulfillment, contestation, and bounded-authority function.

æthOS owns runtime law, standards discipline, continuity discipline, safety, semantic/noetic operating grammar, and system-level constraints.

## Non-exclusionary posture

The substrate component register is not a commitment to implement every listed technology. It is a non-exclusionary map of candidate components.

Candidate components must be classified by role before adoption, removal, or demotion.

## Current repository implication

This repository currently contains static inventory and handwritten playbooks.

Those artifacts are current bootstrap and maintenance material. They are not the long-term source of truth for Ouroboros Infrastructure.

The long-term direction is for the Ouroboros Infrastructure mesh to derive inventory and playbooks, then use Ansible as one execution interface.
