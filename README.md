# mpdreamz/homebrew-tap

Casks that stay under my own name.

| Cask | What it is |
|---|---|
| `yabai` | asmvik/yabai with the macOS 27 fixes from the upstream issues, signed and notarized |

```sh
brew install --cask mpdreamz/tap/yabai
```

reel, undertone and yabar moved to [optionull/tap](https://github.com/optionull/homebrew-tap). `tap_migrations.json`
points the old names at it, so `brew update` carries existing installs over. New installs:

```sh
brew tap optionull/tap
brew install --cask optionull/tap/reel
```

Casks are written by each app's release workflow; change them in the app's repository.
