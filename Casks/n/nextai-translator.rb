cask "nextai-translator" do
  version "0.6.5"
  sha256 "bfc6130788bb4d03a8ab6a0b24419437e7378eb63c5840341d7322de77709c52"

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