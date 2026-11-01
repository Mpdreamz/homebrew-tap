# Written by reel's release workflow from packaging/homebrew/reel.rb in https://github.com/mpdreamz/reel;
# change it there, not here.
cask "reel" do
  version "0.5.0"
  sha256 "01d184d41d31238cc65fecd07fed1dde03e4ad5fd3320a45cdf5c9bd8c5224f5"

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
