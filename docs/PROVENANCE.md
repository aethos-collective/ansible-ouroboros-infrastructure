# Provenance

This repository is a provenance-bearing transition object.

It descends from `ansible-ilyfam-cloud-infra`, a prior Ansible infrastructure repository associated with Christopher Parker's earlier personal/family infrastructure work. The repository now lives under `aethos-collective` as `ansible-ouroboros-infrastructure`.

## Current identity

`ansible-ouroboros-infrastructure` is the Ansible management interface for Ouroboros Infrastructure.

It is not the totality of Ouroboros Infrastructure. It is one operational interface into the broader infrastructure substrate.

## Initial README state

Before the first transition PR, the repository front page still identified the project as:

```markdown
# ansible-ilyfam-cloud-infra
```

It also included an old project note about atomic commits and a historical link into the prior `ilyfam` infrastructure lineage:

```markdown
*(Note to self: [Atomic commits](https://coderwall.com/p/jmqp0a/why-and-how-i-craft-atomic-commits-in-git) are awesome. - @christopher.parker)*

> Kinda like this, except even this commit isn't quite atomic; it's really two atomic commits squished together. https://git.ilyfam.family/ilyfam/ansible-ilyfam-cloud-infra/commit/c7b7faa40aff0d84791ee62af66bfb73b6a6a645 _(Does that make it molecular? 🤔)_
```

Those lines were removed from the active README during identity stabilization, not because the lineage was discarded, but because the front page now needs to describe the repository's current role. The prior front-matter is preserved here as historical documentation residue.

## Inherited material

Inherited material may include old names, hostnames, domains, inventory structures, paths, comments, vault references, service assumptions, family-specific assumptions, personal infrastructure assumptions, and deployment patterns.

Those inherited elements must not be erased mechanically. Each inherited element should be classified before alteration.

## Classification categories

Inherited references should be classified as one or more of the following:

- historical provenance;
- current identity drift;
- live technical assumption;
- secret-adjacent assumption;
- host/domain assumption;
- inventory assumption;
- role/service assumption;
- documentation-only residue;
- candidate for removal after review.

## Migration posture

The migration posture is amend-in-place, provenance-preserving, and behavior-conservative.

The first transition stage should stabilize identity and interpretation before changing infrastructure behavior.

## Non-erasure rule

Old `ilyfam` references are not automatically wrong. Some may be historical, some may be live, and some may be drift. They must be audited before replacement or removal.
