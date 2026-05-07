# Ansible Ouroboros Infrastructure

This repository provides the Ansible management interface for Ouroboros Infrastructure.

Ouroboros Infrastructure is the broader technical substrate for æthOS, Ouroboros ÆI, Æonmesh, TrustSphere, and related systems. This repository is not the totality of that substrate. It is the current Ansible adapter for bootstrapping, provisioning, configuration management, maintenance, recovery, and related infrastructure operations.

Ansible is first-class here, but it is not exclusive. Future interfaces may include CLIs, APIs, ÆI/operator interfaces, MCP-style interfaces, dashboards, event-driven maintenance surfaces, observability systems, secrets systems, and inventory/source-of-truth integrations. Those future interfaces should extend the infrastructure ecology without invalidating this Ansible interface.

## Current transition status

This repository descends from `ansible-ilyfam-cloud-infra`. The repository has been moved into `aethos-collective` and renamed `ansible-ouroboros-infrastructure`, but inherited names, host assumptions, inventory assumptions, service assumptions, paths, comments, and operational patterns have not yet been fully audited.

Inherited material should be treated as provenance-bearing until classified. Do not mechanically replace old identifiers. Do not erase inherited material without determining whether it is historical provenance, current identity drift, a live technical assumption, a secrets-adjacent assumption, a host/domain assumption, an inventory assumption, or a role/service assumption.

## Immediate project posture

The immediate work is documentation-first and behavior-preserving:

- stabilize repository identity and provenance;
- define the interface/adapter model;
- define Ansible's scope and boundaries;
- establish project change-control rules;
- audit inherited `ilyfam` assumptions before refactoring;
- add repository hygiene and validation only after the interpretive layer is stable.

## Layer-assignment rule

Technologies are assigned by function, not by category, ecosystem, distribution model, or vibe.

A component belongs to Ouroboros Infrastructure when it carries substrate responsibility: nodes, services, routing, reachability, topology, deployment, provisioning, orchestration, telemetry, registry state, secrets, IAM, execution, convergence, remediation, derived inventory, derived playbooks, or operational provenance.

## Ansible adapter posture

Ansible is the current first-class execution adapter for bootstrap, provisioning, configuration management, maintenance, remediation, and recovery.

The long-term direction is for the Ouroboros Infrastructure mesh to derive inventory and playbooks, then use Ansible as one inspectable, reviewable, auditable execution interface.

Holons interact with Ansible through scoped, reviewable, provenance-bearing apertures rather than raw imperative access.

## Non-goals for the initial transition

The initial transition does not rename the default branch, rewrite Ansible roles, change deployment behavior, add deployment automation, or collapse Ouroboros Infrastructure into Ansible.

The initial transition also does not prematurely exclude candidate substrate technologies.

## Related documents

- `docs/PROVENANCE.md`
- `docs/PROJECT_CHARTER.md`
- `docs/INTERFACE_MODEL.md`
- `docs/ADAPTER_MODEL.md`
- `docs/CONTROL_PLANE_BOUNDARIES.md`
- `docs/ANSIBLE_SCOPE.md`
- `docs/BOOTSTRAP_MODEL.md`
- `docs/HOLONIC_ANSIBLE_APERTURE.md`
- `docs/EXECUTION_CONTRACT.md`
- `docs/HOLONIC_EXECUTION_FLOW.md`
- `docs/SUBSTRATE_COMPONENT_MODEL.md`
- `docs/SUBSTRATE_COMPONENT_REGISTER.md`
- `docs/BOUNDARY_MAP.md`
- `docs/OUROBOROS_INFRASTRUCTURE_MESH.md`
- `docs/DERIVATION_MODEL.md`
- `docs/ANSIBLE_EXECUTION_INTERFACE.md`
- `docs/OUROBOROS_ÆONMESH_RELATIONSHIP.md`

## Issue queue

The current transition queue is tracked in GitHub issues under the `AOOI` prefix, beginning with:

- `AOOI-000` — Transition action queue for Ansible Ouroboros Infrastructure
- `AOOI-001` — Stabilize repository identity and provenance
- `AOOI-011` — Define substrate component model and layer-assignment rule
- `AOOI-012` — Add nomadic, self-sovereign, and holonic identity/data candidates
- `AOOI-013` — Define holonic Ansible aperture and execution contract
