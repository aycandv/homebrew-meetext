# Homebrew tap for Meetext

[Meetext](https://github.com/aycandv/meetext-app) records calls on your Mac and writes notes with action items.

## Install

```sh
brew install --cask aycandv/meetext/meetext
```

Homebrew also installs `whisperkit-cli`, the speech-to-text tool that Meetext uses.

## Update

```sh
brew upgrade --cask meetext
```

## Remove

```sh
brew uninstall --cask meetext
```

**CAUTION:** The next command also deletes the recordings and the settings of Meetext. Your notes stay in your notes
folder.

To remove Meetext and its data, use this command instead:

```sh
brew uninstall --zap --cask meetext
```
