# Written by reel's release workflow from packaging/homebrew/reel.rb in https://github.com/mpdreamz/reel;
# change it there, not here.
cask "reel" do
  version "0.2.0"
  sha256 "7edb0abdfb776e94475a6685a5bfcaace4e9eaa39cbbcdb32ae283ddfcd1e818"

  url "https://github.com/mpdreamz/reel/releases/download/v#{version}/reel-arm64.zip"
  name "reel"
  desc "Record app and web page demos from a script, with sound"
  homepage "https://github.com/mpdreamz/reel"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  binary "reel"

  caveats <<~EOS
    reel records with Screen Recording and drives apps with Accessibility, both granted to the terminal it runs in:
    `reel doctor` says what is missing. Web pages need nothing more; WebKit is built in.
  EOS
end
