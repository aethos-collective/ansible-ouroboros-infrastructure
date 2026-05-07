# Interface Model

## Core distinction

Ouroboros Infrastructure is the substrate.

`ansible-ouroboros-infrastructure` is the Ansible management interface into that substrate.

The repository must not imply that Ansible is the whole infrastructure, the only control surface, or the final operational grammar.

## Terms

### Substrate

The underlying infrastructure ecology: machines, networks, services, storage, secrets, identity surfaces, observability, inventories, state sources, maintenance processes, and operational patterns.

### Interface

A way for humans, ÆI, software systems, or automation tools to observe, manage, configure, repair, or extend the substrate.

### Adapter

A specific implementation of an interface. This repository is the Ansible adapter.

See `docs/ADAPTER_MODEL.md`.

### Control plane

A coordinating surface that may observe or direct infrastructure state. Ansible can participate in control-plane behavior, but this repository is not the final or sole control plane for Ouroboros Infrastructure.

See `docs/CONTROL_PLANE_BOUNDARIES.md`.

### Execution backend

The mechanism that performs concrete actions. Ansible is one execution backend for provisioning and maintenance.

See `docs/ANSIBLE_EXECUTION_INTERFACE.md` and `docs/ANSIBLE_SCOPE.md`.

### Inventory source

A source of infrastructure target knowledge. This may be static Ansible inventory, generated inventory, private/live inventory, or a future source-of-truth system.

See `docs/DERIVATION_MODEL.md`.

### State source

A source of declared or observed infrastructure state. Ansible variables are one state surface, not the only possible state source.

### Secrets boundary

The membrane separating public repository material from private, encrypted, generated, or operator-held secrets.

### Observability surface

A system or interface for observing status, health, drift, logs, metrics, traces, events, or anomalies.

## Bootstrap role

Before the Ouroboros Infrastructure mesh is mature enough to derive operational artifacts, static inventory and handwritten playbooks remain valid bootstrap and maintenance material.

See `docs/BOOTSTRAP_MODEL.md`.

## Invariant

No single interface may define the whole infrastructure.

Ansible is first-class. It is not exclusive.

## Expected future interfaces

Future interfaces may include:

- CLI tools;
- APIs;
- ÆI/operator interfaces;
- MCP-style interfaces;
- web or dashboard interfaces;
- declarative state interfaces;
- event-driven maintenance interfaces;
- observability interfaces;
- secrets interfaces;
- inventory/source-of-truth interfaces.

Those future interfaces should interoperate with this Ansible adapter rather than erase it.

## Current repository role

This repository should remain focused on Ansible-based bootstrapping, provisioning, configuration management, maintenance, recovery, and infrastructure operations while documenting where those responsibilities end.
