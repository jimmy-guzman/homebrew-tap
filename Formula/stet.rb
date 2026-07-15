class Stet < Formula
  desc "Read-only companion TUI for inspecting an agent's changes"
  homepage "https://github.com/jimmy-guzman/stet"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.8.0/stet-darwin-arm64.tar.gz"
      sha256 "f85da38a846aa798e1cce35b11a08e6415198d19f03d750400f7fe116b45ec90"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.8.0/stet-darwin-x64.tar.gz"
      sha256 "9a03e5fb90adcd7a58b1b004f41b2942cf84f7ff3a7036784e3ab66f121016f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.8.0/stet-linux-arm64.tar.gz"
      sha256 "b2d0c248150eebd31f76f583d39f23ef60f8905a1c55e3a1749598a6ec5b8a17"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.8.0/stet-linux-x64.tar.gz"
      sha256 "60779abc9353e4422aaeb88b9d49fdd0a181c860218c5d392ab5e59b0e2ae697"
    end
  end

  def install
    bin.install "stet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stet --version")
  end
end
