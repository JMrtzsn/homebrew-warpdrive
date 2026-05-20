cask "warpdrive" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "PLACEHOLDER_ARM64_SHA",
         intel: "PLACEHOLDER_X86_64_SHA"

  url "https://github.com/JMrtzsn/warpdrive/releases/download/v#{version}/Warpdrive-macos-#{arch}.zip"
  name "Warpdrive"
  desc "Warp terminal with local AI via OpenCode - no account, no cloud"
  homepage "https://github.com/JMrtzsn/warpdrive"

  depends_on macos: ">= :mojave"

  app "WarpOss.app", target: "Warpdrive.app"

  zap trash: [
    "~/Library/Application Support/dev.warp.WarpOss",
    "~/Library/Caches/dev.warp.WarpOss",
    "~/Library/Preferences/dev.warp.WarpOss.plist",
  ]
end
