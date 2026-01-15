cask "privatevpn" do
  version "3.3.7"
  sha256 :no_check

  url "https://privatevpn.com/client/PrivateVPN.dmg",
      user_agent: :browser
  name "PrivateVPN"
  desc "VPN provider"
  homepage "https://privatevpn.com/"

  livecheck do
    url "https://privatevpn.com/why-privatevpn/view-our-software"
    regex(/Mac\s+VPN\s+app\s+version(?:\s*)*\s+(\d+(?:\.\d+)+)/i)
  end

  # Privatevpn's website prevents downloads via curl, that's why we have line 6
  # disable! date: "2026-01-07", because: :unreachable

  depends_on macos: ">= :catalina"

  app "PrivateVPN.app"

  zap trash: [
    "/Library/LaunchDaemons/com.privat.vpn.helper.plist",
    "/Library/PrivilegedHelperTools/com.privat.vpn.helper",
    "~/Library/Application Support/com.privat.vpn",
    "~/Library/Caches/com.privat.vpn",
    "~/Library/Cookies/com.privat.vpn.binarycookie",
    "~/Library/Preferences/com.privat.vpn.plist",
  ]
end
