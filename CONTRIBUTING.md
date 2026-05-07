# Contributing

## Purpose

This repository is in a documentation-first transition phase.

Contributions should preserve provenance, prevent drift, and avoid accidental behavior changes.

## Ground rules

- Keep changes small and reviewable.
- Prefer one coherent issue per PR.
- Do not bundle documentation-only changes with runtime behavior changes.
- Do not change inventory, playbooks, roles, or deployment behavior unless an issue explicitly authorizes it.
- Do not commit secrets, private topology, credentials, tokens, certificates, or live private inventory.
- Do not perform broad mechanical renames before inherited assumptions are audited.
- Do not delete inherited material without classifying it first.

## Documentation changes

Documentation changes may define architecture, boundaries, vocabulary, and future direction.

They must not imply immediate implementation unless the PR explicitly implements behavior.

Use documentation to clarify:

- what currently exists;
- what is transitional;
- what is future direction;
- what is explicitly not implemented yet.

## Functional changes

Functional changes require explicit issue authorization.

A functional PR must state:

- what behavior changes;
- what systems are affected;
- what inventory or playbooks are touched;
- what validation was performed;
- what rollback or recovery path exists;
- whether secrets or private topology are involved.

## Inherited material

Inherited `ilyfam` material is provenance-bearing until audited.

Classify inherited material before removing or rewriting it.

Potential classifications include historical provenance, identity drift, live technical assumption, host/domain assumption, inventory assumption, role/service assumption, example candidate, template candidate, private/live material, deprecated material, or unsafe material.

## Review expectations

Review should check:

- scope discipline;
- absence of hidden behavior changes;
- provenance preservation;
- secrets safety;
- consistency with the project contract;
- consistency with repository-local architecture docs;
- whether Notion or another canonical surface needs a parallel update.

## Reference

See `docs/PROJECT_CONTRACT.md` for the governing project contract.
