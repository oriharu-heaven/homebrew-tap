cask "denko" do
  version "1.2.0"
  sha256 "c561dc414e6dd4d5f5a3a45f88662c8d2b0be29045c01569b7b659e0aeb54047"

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
