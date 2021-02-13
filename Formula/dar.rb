class Dar < Formula
  desc "Backup directory tree and files"
  homepage "http://dar.linux.free.fr/doc/index.html"
  url "https://downloads.sourceforge.net/project/dar/dar/2.6.13/dar-2.6.13.tar.gz"
  sha256 "3fea9ff9e55fb9827e17a080de7d1a2605b82c2320c0dec969071efefdbfd097"
  license "GPL-2.0-or-later"

  livecheck do
    url :stable
    regex(%r{url=.*?/dar[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end

  depends_on "upx" => [:build, :recommended]
  depends_on "libgcrypt"
  depends_on "lzo"
  on_linux do
    depends_on "bzip2"
  end

  def install
    ENV.cxx11

    args = [
      "--prefix=#{prefix}",
      "--disable-build-html",
      "--disable-dar-static",
      "--disable-dependency-tracking",
      "--disable-libxz-linking",
      "--enable-mode=64",
    ]

    args << "--disable-upx" if build.without? "upx"

    system "./configure", *args
    system "make", "install"
  end

  test do
    system bin/"dar", "-c", "test", "-R", "./Library"
    system bin/"dar", "-d", "test", "-R", "./Library"
  end
end
