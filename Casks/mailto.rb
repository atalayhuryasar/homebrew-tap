cask "mailto" do
  version "1.3.0"
  sha256 "654770b4b55058711bc53c91f4e3b0424a0f11435da50301058f8d0d149cc3a9"

  url "https://github.com/atalayhuryasar/mailto/releases/download/v#{version}/mailto.zip"
  name "mailto"
  name "mailto:"
  desc "Lightweight, on-demand mailto: router for macOS"
  homepage "https://github.com/atalayhuryasar/mailto"

  depends_on macos: :sonoma

  app "mailto.app"

  zap trash: [
    "~/Library/Preferences/com.atalayhuryasar.mailto.plist",
    "~/Library/Application Support/mailto",
  ]
end
