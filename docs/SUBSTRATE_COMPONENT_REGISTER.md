# Substrate Component Register

## Purpose

This register lists candidate substrate components for Ouroboros Infrastructure.

It is intentionally non-exclusionary. Inclusion here does not mean adoption is guaranteed. Exclusion from an implementation plan does not mean permanent rejection.

Each candidate must be classified by function before adoption, demotion, or removal.

## Placement rule

A technology belongs to Ouroboros Infrastructure when it carries substrate responsibility: nodes, services, routing, reachability, topology, deployment, provisioning, orchestration, telemetry, registry state, secrets, IAM, execution, convergence, remediation, derived inventory, derived playbooks, or operational provenance.

The same technology may belong to another layer when it serves a different architectural function.

## Overlay, reachability, and mesh networking

Candidate components:

- Nebula
- Yggdrasil
- WireGuard
- NetBird
- Netmaker
- Headscale / Tailscale-like coordination
- ZeroTier
- SSH

Potential substrate roles:

- node reachability;
- overlay routing;
- peer discovery;
- gateway and relay behavior;
- NAT traversal;
- private service exposure;
- host identity;
- group or ACL boundaries;
- bootstrap connectivity.

## Replication, artifact distribution, and P2P substrate

Candidate components:

- Syncthing
- Holepunch / Pear
- Hypercore
- Hyperbee
- Hyperdrive
- Hyperswarm
- Autobase
- HyperDHT
- Holochain, when used for infrastructure substrate state

Potential substrate roles:

- infrastructure registry state;
- topology state;
- artifact replication;
- configuration distribution;
- deployment bundles;
- node capability records;
- peer discovery;
- operational event streams;
- append-only infrastructure history, where appropriate.

## Provisioning, configuration, and execution

Candidate components:

- Ansible
- OpenTofu
- cloud-init
- Nix / Guix, where appropriate
- shell / systemd bootstrap logic

Potential substrate roles:

- bootstrapping;
- provisioning;
- configuration;
- execution;
- convergence;
- remediation;
- declarative substrate materialization;
- package/system state.

## Orchestration and runtime

Candidate components:

- Kubernetes
- k3s
- Docker / Podman
- Nomad, if later considered

Potential substrate roles:

- workload orchestration;
- service scheduling;
- runtime health management;
- service discovery;
- ingress and exposure coordination;
- self-healing runtime behavior.

## Forge, provenance, and release substrate

Candidate components:

- Forgejo
- Git
- GitOps-style workflows
- package registries
- container registries
- CI runners / Forgejo Actions

Potential substrate roles:

- source of change-control provenance;
- issue tracking;
- pull request review;
- release management;
- artifact publishing;
- operational audit trail;
- workflow execution.

## Secrets, IAM, and workload identity

Candidate components:

- OpenBao
- GnuPG
- SOPS / age-style secret encryption candidates
- Keycloak
- authentik
- SPIFFE / SPIRE
- certificate authorities
- SSH CAs

Potential substrate roles:

- operator identity;
- service identity;
- workload identity;
- secret storage;
- encryption;
- certificate issuance;
- access policy;
- authentication;
- authorization;
- auditability.

## Ingress, edge, and exposure

Candidate components:

- Caddy
- Traefik
- Nginx
- ACME/TLS automation
- relay/gateway nodes

Potential substrate roles:

- reverse proxying;
- HTTPS automation;
- public/private service exposure;
- routing;
- edge ingress;
- gateway operations.

## Observability and telemetry

Candidate components:

- Prometheus
- Grafana
- Loki
- OpenTelemetry
- health probes
- node telemetry feeds

Potential substrate roles:

- health visibility;
- metrics;
- logs;
- traces;
- drift signals;
- service status;
- node status;
- remediation triggers.

## Adoption posture

This register should remain open during early architecture formation.

Do not remove a candidate merely because it belongs to a distributed, peer-to-peer, orchestration, provisioning, forge, IAM, or observability ecosystem.

Classify by function first.