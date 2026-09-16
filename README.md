# Platform workflows

Reusable workflows for Braced Labs services.

Service repositories call workflows from the default branch. Platform Engineering tests backwards compatibility before merging workflow changes.

## Available workflows

- `node-ci.yml` runs lint and unit tests.
- `deploy-service.yml` publishes a deployment request for the selected environment.
- `fork-contribution-preview.yml` runs automatically on pull requests from forks, subject to this repository's own fork-PR-contributor-approval policy (set separately from the organization default). Unlike `customer-portal`'s `PR Assistant`, it has no maintainer label gate: any qualifying contributor's `pull_request_target` run checks out contributor-controlled source and holds a write-scoped `GITHUB_TOKEN`. Actions are enabled in this repository (unlike the other service repositories, which stay disabled by default), and the checkout step sets `allow-unsafe-pr-checkout: true` to bypass `actions/checkout`'s built-in guard against exactly this pattern &mdash; a textbook "pwn request" (see https://gh.io/securely-using-pull_request_target).
