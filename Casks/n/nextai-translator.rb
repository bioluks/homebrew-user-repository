cask "nextai-translator" do
  version "0.6.5"
  sha256 "3acc34952ad6928210461e95077bbaf8f28e3e709aa071cf44287fa80e10ad25"

  url "https://github.com/nextai-translator/nextai-translator/releases/download/v#{version}/NextAI.Translator_#{version}_aarch64.dmg"

  name "NextAI Translator"
  desc "Cross-platform Translatior based on ChatGPT API"
  homepage "https://github.com/nextai-translator/nextai-translator"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "NextAI Translator.app"

  zap trash: [
    "~/Library/Application Support/nextai-translator",
    "~/Library/Preferences/xyz.nextai-translator.apps.plist",
  ]
end