cask "mailto" do
  version "1.2.9"
  sha256 "3075d171d8b6dceeb05f42762d83ca4a3341d98f216ed19273746d645cae824f"

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
