class Sideye < Formula
  desc "Read-only companion TUI for inspecting an agent's changes"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.5.1/sideye-darwin-arm64.tar.gz"
      sha256 "26a42cfbfae1ea25f829df03953452ff11e3dda4eef2c19d626f4149b7b3a88b"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.5.1/sideye-darwin-x64.tar.gz"
      sha256 "cc86bece0c68fc0599f49b401b57775b1c8585c0cb9ee2589a5f7c1326d97f96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.5.1/sideye-linux-arm64.tar.gz"
      sha256 "f632b344c177d9345681b61dea5d0fc7440a79e9563bbe3b8039e7cce13fd7d7"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.5.1/sideye-linux-x64.tar.gz"
      sha256 "b0d8af1470d87d17b9700900eea26fff2e0af05b09311bf3e6ed5a693d60e7c7"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
