# Boundary Map

## Purpose

This document maps the functional boundary between Ouroboros Infrastructure, Æonmesh, TrustSphere, and æthOS.

The boundary is functional, not technological.

## Layer responsibilities

### Ouroboros Infrastructure

Ouroboros Infrastructure owns substrate function.

This includes:

- nodes;
- networks;
- routing;
- reachability;
- services;
- deployment;
- provisioning;
- orchestration;
- infrastructure registry state;
- topology state;
- infrastructure telemetry;
- secrets and IAM substrate;
- identity-bearing service hosting;
- nomadic identity service deployment, backup, monitoring, ingress, and recovery;
- self-sovereign data service hosting;
- execution interfaces;
- derived inventory;
- derived playbooks;
- convergence and remediation;
- operational provenance.

### Æonmesh

Æonmesh owns distributed relational/application coordination function.

This includes:

- shared logs;
- replication;
- peer discovery;
- agent-centric application state;
- distributed relational coordination;
- post-platform application ecology;
- application-level event history;
- clone-aware relational continuity;
- nomadic social/application state where it carries coordination function.

### TrustSphere

TrustSphere owns trust, consent, attestation, and bounded-authority function.

This includes:

- typed claims;
- bounded attestation;
- consent;
- identity proofs;
- authority boundaries;
- provenance;
- contestation;
- amendment;
- requisition;
- fulfillment;
- qualification;
- reliability;
- trust transfer;
- bounded trust.

### æthOS

æthOS owns standards, runtime law, continuity discipline, safety, and semantic/noetic operating grammar.

This includes:

- runtime constraints;
- interface discipline;
- continuity discipline;
- evidence discipline;
- canonical naming discipline;
- semantic and noetic operating law;
- safety boundaries;
- canon promotion and drift prevention.

## Perpendicular beginning

Ouroboros Infrastructure and Æonmesh begin in a perpendicular relationship.

They are distinct axes:

- Ouroboros Infrastructure is the substrate operations axis.
- Æonmesh is the distributed relational/application coordination axis.

Early development must preserve strict separation of authority and source-of-truth domains.

## Parallel maturity

Over time, Ouroboros Infrastructure and Æonmesh may become parallel and interdependent.

This means:

- they may use some of the same primitives;
- they may exchange state through explicit bridges;
- they may coordinate through typed crossings;
- they may mutually inform each other;
- they must not collapse into one layer.

## Same primitive, distinct responsibility

The same primitive may appear on multiple axes.

Examples:

- Hypercore carrying infrastructure registry history belongs to Ouroboros Infrastructure.
- Hypercore carrying application coordination history may belong to Æonmesh.
- Holochain carrying node capability records belongs to Ouroboros Infrastructure.
- Holochain carrying agent-centric application state may belong to Æonmesh.
- Forgejo as sovereign forge and change-control substrate belongs to Ouroboros Infrastructure.
- Forgejo collaboration/event traces may later become Æonmesh-relevant.
- Hubzilla hub deployment, storage, backup, ingress, monitoring, and recovery belong to Ouroboros Infrastructure.
- Zot6 / Nomad channel continuity and clone-aware social/application state become Æonmesh-relevant when they carry relational coordination function.
- Zot6 / Nomad, OpenWebAuth / MagicAuth, DIDs, and Verifiable Credentials become TrustSphere-relevant when they carry attestation, consent, authority, provenance, contestation, or trust-transfer function.
- IAM enforcement belongs to Ouroboros Infrastructure when it governs substrate access.
- IAM becomes Æonmesh-relevant when it requires distributed relational coordination.
- IAM becomes TrustSphere-relevant when it requires attestation, consent, provenance, contestation, or bounded authority.

## Prohibition

Do not assign a technology to a layer by product category alone.

Do not assign technologies by vibe.

Do not infer that distributed systems belong to Æonmesh merely because they are distributed.

Do not infer that orchestration or provisioning technologies are outside Ouroboros Infrastructure because they are not Ansible.

Do not omit nomadic, self-sovereign, or holonic systems merely because they straddle infrastructure, relation, and trust boundaries.
