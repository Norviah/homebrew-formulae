class Spotify < Formula
  desc "a command line interface for spotify"
  homepage "https://github.com/Norviah/spotify"
  head "https://github.com/Norviah/spotify.git"

  version "v1.0.0"
  url "https://github.com/norviah/spotify/archive/#{version}.tar.gz"

  sha256 "91318f717fbba0081ea25c268e74d5b4024d89ec5587f77a80ae42804443cf3d"

  depends_on :macos => :sierra

  license "MIT"

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"
    bin.install '.build/release/spotify'
  end
end
