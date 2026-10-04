cask "mailto" do
  version "1.0.0"
  sha256 "31240c4e539ef1f7121852c03cac3d75e5ffd44ecb6021a6757e109e81ce0e8e"

  url "https://github.com/atalayhuryasar/mailto/releases/download/v#{version}/mailto.zip"
  name "mailto:"
  desc "Lightweight, on-demand mailto: router for macOS"
  homepage "https://github.com/atalayhuryasar/mailto"

  depends_on macos: :sonoma

  app "Mailto.app"

  zap trash: [
    "~/Library/Application Support/com.atalayhuryasar.mailto",
    "~/Library/Caches/com.atalayhuryasar.mailto",
    "~/Library/Preferences/com.atalayhuryasar.mailto.plist",
  ]
end
