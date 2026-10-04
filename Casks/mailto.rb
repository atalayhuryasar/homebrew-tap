cask "mailto" do
  version "1.0.0"
  sha256 "48a0b5fd925c8eae2099ca5ed3a2d7fdf21314461ebf225db530804b9af4928b"

  url "https://github.com/atalayhuryasar/mailto/releases/download/v#{version}/mailto.zip"
  name "mailto"
  name "mailto:"
  desc "Lightweight, on-demand mailto: router for macOS"
  homepage "https://github.com/atalayhuryasar/mailto"

  depends_on macos: ">= :sonoma"

  app "mailto.app"

  zap trash: [
    "~/Library/Preferences/com.atalayhuryasar.mailto.plist",
    "~/Library/Application Support/mailto",
  ]
end
