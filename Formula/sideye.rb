class Sideye < Formula
  desc "Read-only companion TUI for CLI coding agents"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.2/sideye-darwin-arm64.tar.gz"
      sha256 "f6caadf649f0b78e8ae7f72c5f60b7d7ba756e85bcf7dafe5c29b4095b2f3470"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.2/sideye-darwin-x64.tar.gz"
      sha256 "2cbe201ec6c0212a9846a0fedf66825b5362fbf243a2acc4a8958cf0420b5974"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.2/sideye-linux-arm64.tar.gz"
      sha256 "16a9deed246f6cd3bd362baa50099b68381b0b8019bdb7d2bb1ff7d419f9bdcd"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.2/sideye-linux-x64.tar.gz"
      sha256 "b0b9a72d51ccba906774372a7ebe1bdb9e3f92fd2addb0258a9f51ad1d8caba7"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
