cask "activate" do
  version "1.0.0"
  sha256 "34248b16a5cbe9b9d800c86e83dbd7ce2e3285737df5df872a735e510c465a25"

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
