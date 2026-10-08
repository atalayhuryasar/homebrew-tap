# atalayhuryasar / homebrew-tap 🍺

Official Homebrew Tap for macOS applications and utilities by [@atalayhuryasar](https://github.com/atalayhuryasar).

---

## 📦 Available Formulae

| Formula | Description | Installation |
|---|---|---|
| **envmove** | Carry the project context git refuses to: `.env`, handover docs, AI agent state | `brew install atalayhuryasar/tap/envmove` |

## 📦 Available Casks

| App | Description | Installation |
|---|---|---|
| **mailto:** | Lightweight, on-demand `mailto:` router for macOS | `brew install --cask atalayhuryasar/tap/mailto` |

---

## 🚀 Usage

### Install an application
```bash
brew install --cask atalayhuryasar/tap/<cask-name>
```

Or tap the repository first:
```bash
brew tap atalayhuryasar/tap
brew install --cask <cask-name>
```

### Update applications
```bash
brew update
brew upgrade --cask
```

---

---

## 📌 Notes

- **envmove** is macOS only, by choice. Its private key lives in the login keychain.
  See [DESIGN.md](https://github.com/atalayhuryasar/envmove/blob/main/DESIGN.md) for why.

---

## 📄 License
Individual formulae and casks are released under their respective open-source project licenses.
