cask "wakatoken" do
  version "1.0.1"

  on_arm do
    url "https://github.com/wakatoken/wakatoken/releases/download/v#{version}/WakaToken_#{version}_aarch64.dmg"
    sha256 ""
  end

  on_intel do
    url "https://github.com/wakatoken/wakatoken/releases/download/v#{version}/WakaToken_#{version}_x64.dmg"
    sha256 "16b680fc95cdfbd96a9936a1742c26ee054652b662c2a75554df4f6282e4f231"
  end

  name "WakaToken"
  desc "AI coding assistant token usage tracker"
  homepage "https://github.com/wakatoken/wakatoken"

  app "WakaToken.app"

  zap trash: [
    "~/Library/Application Support/com.wakatoken.client",
    "~/Library/Preferences/com.wakatoken.client.plist",
    "~/Library/Caches/com.wakatoken.client",
    "~/.config/com.wakatoken.client",
  ]
end
