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

## Non-goals for the initial transition

The initial transition does not rename the default branch, rewrite Ansible roles, change deployment behavior, add deployment automation, introduce additional infrastructure-management frameworks, or collapse Ouroboros Infrastructure into Ansible.

## Related documents

- `docs/PROVENANCE.md`
- `docs/PROJECT_CHARTER.md`
- `docs/INTERFACE_MODEL.md`

## Issue queue

The current transition queue is tracked in GitHub issues under the `AOOI` prefix, beginning with:

- `AOOI-000` — Transition action queue for Ansible Ouroboros Infrastructure
- `AOOI-001` — Stabilize repository identity and provenance
