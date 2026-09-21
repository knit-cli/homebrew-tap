# Homebrew Tap for knit

This is the official Homebrew tap for [knit](https://github.com/knit-cli/knit), a local-first CLI for coordinating cross-repo feature bundles.

## Installation

```sh
brew tap knit-cli/tap
brew install knit
```

Or in one command:

```sh
brew install knit-cli/tap/knit
```

## Updating

```sh
brew update
brew upgrade knit
```

## Uninstalling

```sh
brew uninstall knit
brew untap knit-cli/tap
```

## Available Formulae

- **knit** — Local-first CLI for coordinating cross-repo feature bundles

## Maintainer Notes

Releases must ship the complete generated formula together with verified bottles attached to the GitHub release. Never bump only the version and source hashes: installation (and CI) requires a compatible bottle and pours from it, so a source-only bump breaks installs.

## License

Apache-2.0
