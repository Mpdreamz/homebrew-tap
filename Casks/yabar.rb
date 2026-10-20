# Written by yabar's release workflow from packaging/homebrew/yabar.rb in https://github.com/mpdreamz/yabar;
# change it there, not here.
cask "yabar" do
  version "0.3.0"
  sha256 "c988cfc12a1f1548d84af2ba6a9a1ef947f2caac584eebae4a39f21c83f6cabd"

  url "https://github.com/mpdreamz/yabar/releases/download/v#{version}/Yabar-arm64.zip"
  name "Yabar"
  desc "Menu bar spaces and window stack indicators for yabai"
  homepage "https://github.com/mpdreamz/yabar"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Yabar updates itself (Sparkle); brew upgrade leaves it to that (brew upgrade --greedy still upgrades it).
  auto_updates true

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Yabar.app"
  binary "#{appdir}/Yabar.app/Contents/Helpers/yabar"

  uninstall quit: "io.github.mpdreamz.yabar"

  zap trash: [
    "~/Library/Application Support/Yabar",
    "~/Library/Caches/io.github.mpdreamz.yabar",
    "~/Library/HTTPStorages/io.github.mpdreamz.yabar",
    "~/Library/Preferences/io.github.mpdreamz.yabar.plist",
  ]
end
