class Sideye < Formula
  desc "Read-only companion TUI for CLI coding agents"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.7/sideye-darwin-arm64.tar.gz"
      sha256 "db614f8237e0270196e98eb69e68d2da36199b1836eceb01a93cb829bba9cf44"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.7/sideye-darwin-x64.tar.gz"
      sha256 "63d33f47ea72b9765a120dc386eab4dcd69ae7c0901d29e6d3aedf5afa6400ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.7/sideye-linux-arm64.tar.gz"
      sha256 "a0aebcc787122fe740d041d307809993219f645bd47083c3e6f43d3c0d4314f9"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.7/sideye-linux-x64.tar.gz"
      sha256 "05ae37435fd245370e8b697fff6312004c534d2e2b8ed26f5c1902503c37332a"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
