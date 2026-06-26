class Sideye < Formula
  desc "Read-only companion TUI for CLI coding agents"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.0/sideye-darwin-arm64.tar.gz"
      sha256 "6380676f7b82891bc16ea8fffc15c947aab7cfef4845e943f15bc40786050306"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.0/sideye-darwin-x64.tar.gz"
      sha256 "7c416ddaaec144d2af067ad52144c12f97e388d449011832ec4112271e2de960"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.0/sideye-linux-arm64.tar.gz"
      sha256 "71ad9de61ed24294991dc8506fa13628a2ced0193293832a53cd303b4058541e"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.0/sideye-linux-x64.tar.gz"
      sha256 "67ff8dda2c781de969186c00598e21c22d159dc49e63ea0601c22f9bf80e852e"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
