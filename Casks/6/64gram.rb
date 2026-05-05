cask "64gram" do
  version "1.2.1"
  sha256 "5bc6df26c617bdefe135616a23ae869ca44ce774b6ce65e7a570c02f0a49df2d"

  url "https://github.com/TDesktop-x64/tdesktop/releases/download/v#{version}/64Gram_#{version}_mac.dmg"
  name "64Gram"
  desc "Telegram Desktop fork with power features"
  homepage "https://github.com/TDesktop-x64/tdesktop"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases do |json, regex|
      file_regex = /^64Gram[._-]\d+(?:\.\d+)+[._-]mac\.dmg$/i

      json.map do |release|
        next if release["draft"] || release["prerelease"]
        next unless release["assets"]&.any? { |asset| asset["name"]&.match?(file_regex) }

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "64Gram.app"

  zap trash: [
    "~/Library/Application Support/Telegram Desktop",
    "~/Library/Preferences/com.tdesktop.Telegram.plist",
    "~/Library/Saved Application State/com.tdesktop.Telegram.savedState",
  ]
end
