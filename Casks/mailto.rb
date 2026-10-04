cask "mailto" do
  version "1.2.4"
  sha256 "c77ad0c61f40caf13bd060e3917683dd385932b6c9a2b70ff2f85ca296d9a9a6"

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
