# Written by undertone's release workflow from packaging/homebrew/undertone.rb in https://github.com/mpdreamz/undertone;
# change it there, not here.
cask "undertone" do
  version "0.3.0"
  sha256 "5a3e9c1ae08c194f8c1316f247b6ee1657b549d617cfdaee97309b64723a7644"

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
