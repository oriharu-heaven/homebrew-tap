cask "denko" do
  version "1.0.0"
  sha256 "7c4047f693abc18a2d199854de9b67704a775c6343fe73e674650f16a1b04ed7"

  url "https://github.com/oriharu-heaven/Denko/releases/download/v#{version}/Denko-#{version}.dmg"
  name "Denko"
  desc "Menu bar that turns into a station LED board"
  homepage "https://github.com/oriharu-heaven/Denko"

  # アプリ自身が Sparkle で更新するので、brew upgrade では入れ替えない
  auto_updates true
  depends_on macos: :sonoma

  app "Denko.app"

  uninstall quit: "com.haru.Denko"

  zap trash: [
    "~/Library/Application Support/Denko",
    "~/Library/Caches/com.haru.Denko",
    "~/Library/HTTPStorages/com.haru.Denko",
    "~/Library/Preferences/com.haru.Denko.plist",
  ]
end
