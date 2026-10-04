cask "mailto" do
  version "1.3.1"
  sha256 "f64cac0eb3c1b8814530547055c8dc3ec25c87d930ddb77c5055515804f5e4dc"

  url "https://github.com/atalayhuryasar/mailto/releases/download/v#{version}/mailto.zip"
  name "mailto"
  name "mailto:"
  desc "Lightweight, on-demand mailto: router"
  homepage "https://github.com/atalayhuryasar/mailto"

  depends_on macos: :sonoma

  app "mailto.app"

  zap trash: [
    "~/Library/Application Support/mailto",
    "~/Library/Preferences/com.atalayhuryasar.mailto.plist",
  ]
end
