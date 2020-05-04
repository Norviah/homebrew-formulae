class Trash < Formula

  desc "Delete files on OS X systems."
  homepage "https://github.com/norviah/trash"
  url "https://github.com/Norviah/trash/archive/1.0.0.tar.gz"

  sha256 "5667421f2b2386f3a6ab01e53e2c92e5e096121b7b8c62944c84922c3779d5c9"

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"
    bin.install '.build/release/trash'
  end

end
