class Sideye < Formula
  desc "Read-only companion TUI with IDE-grade insight into agent changes"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.3/sideye-darwin-arm64.tar.gz"
      sha256 "df04121d16544be9a8a482c96a6ef310220ff360cb03e993a1253677832a503e"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.3/sideye-darwin-x64.tar.gz"
      sha256 "e8955bbf7e0ef58ffba44cff6cc81c7e6de7b89c1aeae076db6cf0e57a646985"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.3/sideye-linux-arm64.tar.gz"
      sha256 "ccf94065dd47112b2c57b143e4017a37b77a1091ff989fb86ae4b26ada6dcd49"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.3/sideye-linux-x64.tar.gz"
      sha256 "4be632acfa80b82c479747f1829b6052d0bdb3809336afe4c9c402d9faff189b"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
