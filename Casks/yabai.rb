# Written by yabai's release workflow from packaging/homebrew/yabai.rb in https://github.com/mpdreamz/yabai;
# change it there, not here.
cask "yabai" do
  version "7.1.25-mpd.1"
  sha256 "20f0bd0a54a634fa73a094ae3381666863d32ea7e070f99d9b6c4ed50623744e"

  url "https://github.com/mpdreamz/yabai/releases/download/v#{version}/yabai-#{version}.zip"
  name "yabai"
  desc "Tiling window manager for macOS, with macOS 27 support for the scripting addition"
  homepage "https://github.com/mpdreamz/yabai"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  binary "yabai-#{version}/bin/yabai"
  manpage "yabai-#{version}/doc/yabai.1"

  caveats <<~EOS
    This is asmvik/yabai with the macOS 27 fixes from the upstream issues applied
    (see https://github.com/mpdreamz/yabai). It replaces the asmvik/formulae/yabai formula:
    uninstall that first, then (re)write the sudoers rule for --load-sa, since the binary changed.
  EOS
end
