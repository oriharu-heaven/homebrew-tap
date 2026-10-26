cask "denko" do
  version "1.0.1"
  sha256 "cd4efa7261d25a317de9387e3823bbdf0994992cb383308bb3485746c18519fd"

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
