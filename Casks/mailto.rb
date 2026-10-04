cask "mailto" do
  version "1.0.0"
  sha256 "aba99e3013826978d5ac8a13609240717804cb8a2e13e1e58537e61e3dd59067"

  url "https://github.com/atalayhuryasar/mailto/releases/download/v#{version}/mailto.zip"
  name "mailto:"
  desc "Lightweight, on-demand mailto: router for macOS"
  homepage "https://github.com/atalayhuryasar/mailto"

  depends_on macos: :sonoma

  app "mailto.app"

  zap trash: [
    "~/Library/Application Support/com.atalayhuryasar.mailto",
    "~/Library/Caches/com.atalayhuryasar.mailto",
    "~/Library/Preferences/com.atalayhuryasar.mailto.plist",
  ]
end
