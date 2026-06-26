class Sideye < Formula
  desc "Read-only companion TUI for CLI coding agents"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.1/sideye-darwin-arm64.tar.gz"
      sha256 "6a43bc1b95cf5c67ccdce815e9ee0863f8ab80ea0eb1412488a864b40fa9439f"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.1/sideye-darwin-x64.tar.gz"
      sha256 "915778f4400db9c4171e7a14c14b9a18378d49887aaac47fa9e20d2dbff0db0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.1/sideye-linux-arm64.tar.gz"
      sha256 "fb892edce6f1673b44ed09db13e36520266d870e99eed30158ef61e00a3d2d02"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.1/sideye-linux-x64.tar.gz"
      sha256 "085b895f71ebbfcb87d5e5eef38757d4fb90e68396d7c78c8c6f3ce4a4f8f05c"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
