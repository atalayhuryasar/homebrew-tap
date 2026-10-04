cask "mailto" do
  version "1.2.6"
  sha256 "9e8d7382d9f7f51fcdf4c472cd9938b80b51ea9b52c2338c9b81fa3e75c684ea"

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
