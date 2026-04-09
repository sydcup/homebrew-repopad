<div align="center">

<img src="icon.png" alt="RepoPad" width="128" height="128" />

# homebrew-repopad

**The official [Homebrew](https://brew.sh) tap for [RepoPad](https://repopad.com).**

[![Website](https://img.shields.io/badge/website-repopad.com-1f6feb?style=flat-square)](https://repopad.com)
[![Homebrew](https://img.shields.io/badge/homebrew-tap-FBB040?style=flat-square&logo=homebrew&logoColor=white)](https://github.com/sydcup/homebrew-repopad)
[![macOS](https://img.shields.io/badge/macOS-15%2B-black?style=flat-square&logo=apple)](https://www.apple.com/macos/)

</div>

---

RepoPad is a menu bar app for quickly managing your Git repositories on macOS. This tap lets you install and update it with a single Homebrew command.

## Install

```sh
brew install --cask sydcup/repopad/repopad
```

Homebrew will fetch the latest notarized build from [sydcup/repopad-releases](https://github.com/sydcup/repopad-releases) and install `RepoPad.app` into `/Applications`.

## Update

```sh
brew upgrade --cask repopad
```

## Uninstall

```sh
brew uninstall --cask repopad
```

## How it works

The `Casks/repopad.rb` formula in this tap is updated automatically by the RepoPad release pipeline whenever a new version ships. Each cask points at the corresponding `RepoPad-<version>.zip` artifact in [sydcup/repopad-releases](https://github.com/sydcup/repopad-releases) and is verified with SHA-256.

## Requirements

- macOS Tahoe (15) or later
- [Homebrew](https://brew.sh)

## Links

- **Website:** [repopad.com](https://repopad.com)
- **Releases:** [sydcup/repopad-releases](https://github.com/sydcup/repopad-releases)

## Issues & feedback

Bug reports and feature requests are welcome on the [RepoPad issue tracker](https://github.com/sydcup/repopad-releases/issues).

---

<div align="center">

Made with care by [Sydcup](https://sydcup.com)

</div>
