# Written by undertone's release workflow from packaging/homebrew/undertone.rb in https://github.com/mpdreamz/undertone;
# change it there, not here.
cask "undertone" do
  version "0.5.0"
  sha256 "aab2cce9bddba3e66ff7d16b09d42cf193b19394d933cb7b52dcb45889c503e0"

  url "https://github.com/mpdreamz/undertone/releases/download/v#{version}/Undertone-arm64.zip"
  name "Undertone"
  desc "Hide the notch under generated wallpapers that follow your theme"
  homepage "https://github.com/mpdreamz/undertone"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Undertone updates itself (Sparkle); brew upgrade leaves it to that (brew upgrade --greedy still upgrades it).
  auto_updates true

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Undertone.app"
  binary "#{appdir}/Undertone.app/Contents/Helpers/undertone"

  uninstall quit: "io.github.mpdreamz.undertone"

  zap trash: [
    "~/Library/Application Support/Undertone",
    "~/Library/Caches/io.github.mpdreamz.undertone",
    "~/Library/HTTPStorages/io.github.mpdreamz.undertone",
    "~/Library/Preferences/io.github.mpdreamz.undertone.plist",
  ]
end
