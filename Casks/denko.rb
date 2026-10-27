cask "denko" do
  version "1.1.0"
  sha256 "f5e36fabc6ed7d97d2a5c4197c06cb499d1e7c4a4f540d73933d3a7d629a7ccf"

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
