# Ledger-Derived Inventory

## Purpose

This document defines how Ansible inventory may eventually be derived from the Ouroboros Infrastructure operational ledger.

The current repository may contain static inventory. Static inventory remains valid as bootstrap material, example material, fallback material, and operational memory.

Ledger-derived inventory is the future direction, not an immediate behavior change.

## Core invariant

Inventory is a view over substrate state.

It should eventually be compiled from operational ledger records rather than treated as permanent handwritten source of truth.

## Current mode

Current static inventory may express:

- known hosts;
- groups;
- host variables;
- group variables;
- service assumptions;
- reachability assumptions;
- bootstrap assumptions;
- inherited prototype assumptions.

These artifacts must be audited before refactoring.

## Future mode

Future inventory may be derived from ledger records describing:

- node identity;
- holon membership;
- reachability state;
- overlay addresses;
- topology class;
- service roles;
- service bindings;
- capabilities;
- runtime posture;
- maintenance state;
- secrets eligibility;
- IAM eligibility;
- execution eligibility;
- recovery posture.

## Inventory views

Ledger-derived inventory should be view-based.

Different holons and execution contracts may receive different inventory views from the same operational ledger.

Examples:

- a device holon may see only itself;
- a household holon may see local nodes;
- a project holon may see project-owned service nodes;
- a chapter holon may see chapter infrastructure;
- an organization holon may receive proposal or coordination views rather than raw direct execution views.

## View constraints

An inventory view must preserve:

- identity scope;
- authority scope;
- topology scope;
- service scope;
- secrets boundary;
- review posture;
- execution posture;
- provenance.

## Dynamic inventory path

One implementation path is a custom dynamic inventory plugin that reads from the Ouroboros operational ledger or a derived ledger view.

This path is powerful, but it can be less inspectable if it reads live state directly at execution time.

It should not be the first required path unless the review model is mature.

## Compiled inventory path

A safer early path is compiled inventory.

```text
operational ledger
→ inventory derivation
→ generated inventory file or directory
→ review / diff / approval
→ StorageGraft materialized execution view
→ Ansible Runner or ansible-playbook
```

Compiled inventory can be inspected, diffed, signed, archived, and linked to an execution contract before use.

## Required provenance

A generated inventory artifact should answer:

- which ledger state produced it;
- which holon requested it;
- which execution contract it supports;
- which nodes and groups are included;
- which nodes and groups are excluded;
- what authority boundary applies;
- what secrets boundary applies;
- whether it is check-only or apply-capable;
- when it expires or becomes stale.

## Expiration and freshness

Inventory views should not be assumed timeless.

A generated inventory view should carry freshness metadata or expiration semantics once implementation begins.

Stale inventory must not silently become authority.

## Non-goals

This document does not implement dynamic inventory.

It does not replace current inventory.

It does not authorize new execution behavior.

It defines the future derivation model for inventory.
