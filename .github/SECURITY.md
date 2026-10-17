# Security Policy

## Scope

This repository contains an installation guide, reference configuration files and architecture diagrams — not a software product. Security reports are welcome for anything in this repository that could weaken a server built by following it, for example:

- a command, script or configuration file that exposes a service, credential or key;
- a firewall, TLS or permission setting that is weaker than the guide states;
- guidance that contradicts current upstream security recommendations.

## Supported versions

| Guide release | Ascender | k3s | Ubuntu Server | Supported |
|---|---|---|---|---|
| Current `main` | 25.6.2 | v1.36.5+k3s1 | 26.04 LTS | ✅ |

## Reporting a vulnerability

Please **do not** disclose security problems publicly. Report them privately through GitHub:

1. Open the repository's **Security** tab.
2. Select **Report a vulnerability** — or go directly to <https://github.com/biazini/ascender-k3s-installation/security/advisories/new>.
3. Describe the affected section or file, the risk, and a suggested correction if you have one.

Reports are reviewed on a best-effort basis. Confirmed problems are corrected in the guide, and the reporter is credited unless they prefer otherwise.

## Vulnerabilities in Ascender or its dependencies

Vulnerabilities in Ascender itself, its installer, k3s or other upstream components must be reported to their maintainers, not here:

- Ascender: <https://github.com/ctrliq/ascender/blob/main/SECURITY.md>
- k3s: <https://github.com/k3s-io/k3s/security/policy>
