cask "warpdrive" do
  version "0.1.0"
  sha256 "c2fd3ed45fbed378a8abdfb28a78b7a3b4adb9f0bf6e0662ba867dd22145ce00"

  url "https://github.com/JMrtzsn/warpdrive/releases/download/v#{version}/Warpdrive-macos-arm64.zip"
  name "Warpdrive"
  desc "Warp terminal with local AI via OpenCode - no account, no cloud"
  homepage "https://github.com/JMrtzsn/warpdrive"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Warpdrive.app"

  zap trash: [
    "~/Library/Application Support/dev.warpdrive.Warpdrive",
    "~/Library/Caches/dev.warpdrive.Warpdrive",
    "~/Library/Preferences/dev.warpdrive.Warpdrive.plist",
  ]
end
