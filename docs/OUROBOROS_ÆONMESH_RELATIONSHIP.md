# Ouroboros Infrastructure and Æonmesh Relationship

## Purpose

This document defines the relationship between Ouroboros Infrastructure and Æonmesh.

The relationship is temporal and phased. It is not a single fixed boundary.

## Beginning posture: perpendicular

Ouroboros Infrastructure and Æonmesh begin in a perpendicular relationship.

They operate on distinct axes:

- Ouroboros Infrastructure is the substrate operations axis.
- Æonmesh is the distributed relational/application coordination axis.

At this stage, separation is necessary.

The early rule is:

- separate axes;
- explicit seams;
- no authority leakage;
- no layer collapse;
- no accidental migration of infrastructure state into Æonmesh;
- no accidental migration of application coordination semantics into the infrastructure source of truth.

## Mature posture: parallel and interdependent

Over time, Ouroboros Infrastructure and Æonmesh may become parallel and interdependent.

They may:

- use overlapping primitives;
- exchange state through explicit bridges;
- coordinate through typed crossings;
- inform each other's design;
- develop reciprocal feedback loops.

This does not mean they collapse into one layer.

## Shared primitives do not imply shared layer

The same primitive may appear in both systems.

Examples:

- Hypercore used for infrastructure registry history belongs to Ouroboros Infrastructure.
- Hypercore used for application coordination history may belong to Æonmesh.
- Holochain used for node capability records belongs to Ouroboros Infrastructure.
- Holochain used for agent-centric application state may belong to Æonmesh.
- Forgejo as sovereign forge and operational provenance substrate belongs to Ouroboros Infrastructure.
- Forgejo collaboration history may become Æonmesh-relevant if treated as distributed relational state.
- Hubzilla hub deployment, storage, backup, ingress, monitoring, and recovery belong to Ouroboros Infrastructure.
- Zot6 / Nomad channel continuity and clone-aware social/application state become Æonmesh-relevant when they carry relational coordination function.
- Zot6 / Nomad, OpenWebAuth / MagicAuth, DIDs, and Verifiable Credentials become TrustSphere-relevant when they carry attestation, consent, authority, provenance, contestation, or trust-transfer function.

## Nomadic identity seam

Nomadic, self-sovereign, and holonic systems deserve explicit handling because they can span infrastructure, relation, and trust boundaries.

The infrastructure substrate may host, expose, back up, monitor, and recover identity-bearing services.

Æonmesh becomes relevant when nomadic identities carry distributed relational/application coordination, clone-aware continuity, shared histories, or social/application state.

TrustSphere becomes relevant when nomadic or self-sovereign systems carry attestation, consent, authority, provenance, contestation, amendment, qualification, or trust transfer.

Compatibility between Hubzilla Zot6/Nomad and Streams/Nomad-family systems must be verified before assuming clone or interoperability behavior.

## IAM seam

IAM makes Æonmesh increasingly legible because identity, delegation, authorization, capability, and revocation can become distributed and relational.

However, infrastructure IAM remains an Ouroboros Infrastructure concern when it governs substrate access:

- operator access;
- machine identity;
- node identity;
- service identity;
- workload identity;
- SSH access;
- certificates;
- secret access;
- execution permissions.

IAM becomes Æonmesh-relevant when the concern is distributed relational coordination.

IAM becomes TrustSphere-relevant when the concern is trust, consent, attestation, provenance, contestation, or bounded authority.

## Rule

Ouroboros Infrastructure and Æonmesh may become parallel and interdependent, but all crossings must remain typed and explicit.
