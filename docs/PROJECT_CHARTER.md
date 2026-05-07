# Project Charter

## Project identity

`ansible-ouroboros-infrastructure` is the Ansible management interface for Ouroboros Infrastructure under `aethos-collective`.

Ouroboros Infrastructure is the broader technical substrate for æthOS, Ouroboros ÆI, Æonmesh, TrustSphere, and related systems. This repository is an operational adapter into that substrate.

## Purpose

This repository exists to provide Ansible-based infrastructure bootstrapping, provisioning, configuration management, maintenance, repair, recovery, and operational automation.

It preserves a working lineage from earlier infrastructure automation while gradually regularizing that lineage into a public, organization-owned, provenance-aware infrastructure interface.

## Governing distinction

Ouroboros Infrastructure is the substrate.

This repository is one management interface into that substrate.

Ansible is currently the first operational interface. It is first-class, but it is not exclusive.

## Operating contract

Repository work is governed by `docs/PROJECT_CONTRACT.md`.

The project contract defines change-control invariants, including no silent rewrites, provenance preservation, behavior-change authorization, secrets safety, and classification before refactoring.

Contributions should follow `CONTRIBUTING.md`.

Notable transition changes should be recorded in `CHANGELOG.md`.

## Near-term objectives

- Stabilize repository identity and provenance.
- Define the interface and adapter model.
- Define Ansible scope and boundaries.
- Establish change-control discipline.
- Audit inherited `ilyfam` assumptions.
- Separate example, template, generated, and private/live inventory models.
- Add repository hygiene and validation without deployment side effects.

## Non-goals

The initial transition does not:

- rename the default branch;
- rewrite Ansible roles;
- change deployment behavior;
- perform global string replacement;
- add deployment automation;
- introduce additional management frameworks;
- expose live private inventory;
- collapse Ouroboros Infrastructure into this repository.

## Change posture

Changes should be small, reviewable, provenance-aware, and behavior-conservative unless an issue explicitly authorizes functional change.

Documentation changes may establish interpretive structure. Functional Ansible changes should follow only after inherited assumptions are audited and classified.
