class Sideye < Formula
  desc "Read-only companion TUI for CLI coding agents"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.7/sideye-darwin-arm64.tar.gz"
      sha256 "0876807528a5c55f4b39397779e567f298c905782cf350c5abdc297419d3a1f2"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.7/sideye-darwin-x64.tar.gz"
      sha256 "43c4b8500083c5268c9523eeaa4bbd3b3be2322ceccd5bc0d4488b0d7652b2c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.7/sideye-linux-arm64.tar.gz"
      sha256 "692751416f46cb85e16aeb525b0d70d0eb41a26ae80e498389f182a3c1ab18c6"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.7/sideye-linux-x64.tar.gz"
      sha256 "75b0d3daeb50a7a4780951b09b8439e81007b69997ca789e3dcc36f86f2113cd"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
