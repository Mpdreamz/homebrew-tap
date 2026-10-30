# Written by reel's release workflow from packaging/homebrew/reel.rb in https://github.com/mpdreamz/reel;
# change it there, not here.
cask "reel" do
  version "0.3.0"
  sha256 "7b578f2f6c59e1710b2b4e7fc61c0403e22b77610542dc4cb272cb24feec5add"

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
