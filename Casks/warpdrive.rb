cask "warpdrive" do
  version "0.1.0"
  sha256 :no_check

  url "https://github.com/JMrtzsn/warpdrive/releases/download/v#{version}/Warpdrive-macos-arm64.zip"
  name "Warpdrive"
  desc "Warp terminal with local AI via OpenCode - no account, no cloud"
  homepage "https://github.com/JMrtzsn/warpdrive"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Warpdrive.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Warpdrive.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/dev.warpdrive.Warpdrive",
    "~/Library/Caches/dev.warpdrive.Warpdrive",
    "~/Library/Preferences/dev.warpdrive.Warpdrive.plist",
  ]
end
