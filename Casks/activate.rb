cask "activate" do
  version "1.1.0"
  sha256 "5741ba5f882d2e9a4af66c0658072695553d3fe4d45761cbf5cdce324c018fd8"

  url "https://github.com/Zarox28/Activate/releases/download/v#{version}/Activate.dmg"
  name "Activate"
  desc "Activate MacOS is a playful macOS app that mimics the Windows activation message"
  homepage "https://github.com/Zarox28/Activate"

  app "Activate.app"

  zap trash: [
    "~/Library/Application Support/Activate",
    "~/Library/Preferences/com.Zarox28.Activate.plist",
    "~/Library/Caches/com.Zarox28.Activate",
    "~/Library/Logs/Activate",
    "~/Library/Saved Application State/com.Zarox28.Activate.savedState"
  ]
end