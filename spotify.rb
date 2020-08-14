class Spotify < Formula
  desc "a command line interface for spotify"
  homepage "https://github.com/Norviah/spotify"
  head "https://github.com/Norviah/spotify.git"

  version "v1.0.0"
  url "https://github.com/norviah/spotify/archive/#{version}.tar.gz"

  sha256 "7599256aabeec6da165e6dcf19ed876da97d53fc4e4d103b98c9f1745776064b"

  depends_on :macos => :sierra

  license "MIT"

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"
    bin.install '.build/release/spotify'
  end
end
