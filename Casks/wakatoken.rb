cask "wakatoken" do
  version "1.1.3"

  on_arm do
    url "https://github.com/wakatoken/wakatoken/releases/download/v#{version}/WakaToken_#{version}_aarch64.dmg"
    sha256 "20f32f0edc8449d96497e544eaa09764260f496a104e05d67f3fa1ee619f93bd"
  end

  on_intel do
    url "https://github.com/wakatoken/wakatoken/releases/download/v#{version}/WakaToken_#{version}_x64.dmg"
    sha256 "c01f995141e0e8e766401ec419ca6df75536fdff011e4df03290e96914171a63"
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
