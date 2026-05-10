cask "wakatoken" do
  version "1.1.4"

  on_arm do
    url "https://github.com/wakatoken/wakatoken/releases/download/v#{version}/WakaToken_#{version}_aarch64.dmg"
    sha256 "87db5bc0ba623beae7c3085164fc20f81ceec6e4891a5650931d02cd5a384a11"
  end

  on_intel do
    url "https://github.com/wakatoken/wakatoken/releases/download/v#{version}/WakaToken_#{version}_x64.dmg"
    sha256 "07c01a7fd06a04412757ded2b2c38aad9568cf22d6d76d13ef09545ebb85e5d0"
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
