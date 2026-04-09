# homebrew-repopad

The official [Homebrew](https://brew.sh) tap for [RepoPad](https://repopad.com) — a menu bar app for quickly managing your Git repositories on macOS.

## Install

```sh
brew install --cask sydcup/repopad/repopad
```

That's it. Homebrew will fetch the latest notarized build from the [releases repo](https://github.com/sydcup/RepoPad-releases) and install `RepoPad.app` into `/Applications`.

## Update

```sh
brew upgrade --cask repopad
```

## Uninstall

```sh
brew uninstall --cask repopad
```

## How it works

The `Casks/repopad.rb` formula in this tap is updated automatically by the RepoPad release pipeline whenever a new version is published. Each release points at the corresponding `RepoPad-<version>.zip` artifact in [sydcup/RepoPad-releases](https://github.com/sydcup/RepoPad-releases).

## Requirements

- macOS Tahoe (15) or later
- [Homebrew](https://brew.sh)

## Links

- Website: <https://repopad.com>
- Releases: <https://github.com/sydcup/RepoPad-releases>
