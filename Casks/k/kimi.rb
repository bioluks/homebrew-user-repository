cask "kimi" do
  version "3.0.3"
  sha256 "cdcf5bd99d9e8cc5ff47edcb843017ac140a4f5c78980bf2f890299a61bd8809"

  url "https://kimi-img.moonshot.cn/app/download/macos/kimi_#{version}.dmg",
      verified: "kimi-img.moonshot.cn/app/download/macos/"
  name "Kimi"
  desc "AI Assistant"
  homepage "https://kimi.moonshot.cn/"

  livecheck do
    skip "No version information available"
  end

  app "Kimi.app"

  zap trash: [
    "~/Library/Application Support/Kimi",
    "~/Library/Preferences/cn.moonshot.kimi.plist",
    "~/Library/Saved Application State/cn.moonshot.kimi.savedState",
  ]
end
