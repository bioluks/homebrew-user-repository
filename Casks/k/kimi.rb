cask "kimi" do
  version "2.1.3"
  sha256 "7e1fb8d985f9c3f633c46353606d39f38f6144a89f7ce9f785681f8dc3ba859f"

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