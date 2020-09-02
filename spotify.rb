class Spotify < Formula
  desc "a command line interface for spotify"
  homepage "https://github.com/Norviah/spotify"
  head "https://github.com/Norviah/spotify.git"

  version "v1.1.1"
  url "https://github.com/norviah/spotify/archive/#{version}.tar.gz"

  sha256 "4332c69c8d5da9330083448d938c9422504a7a90e446a30a6a075be0e5ef0df1"

  depends_on :macos => :sierra

  license "MIT"

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"
    bin.install '.build/release/spotify'
  end
end
