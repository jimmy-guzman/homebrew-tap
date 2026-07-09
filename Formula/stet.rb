class Stet < Formula
  desc "Read-only companion TUI for inspecting an agent's changes"
  homepage "https://github.com/jimmy-guzman/stet"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.7.1/stet-darwin-arm64.tar.gz"
      sha256 "54491e76e56e3e1db7f2552afd7c745d8b91baa093333645a46c13d782b1cde4"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.7.1/stet-darwin-x64.tar.gz"
      sha256 "908e850dc7a478286e6cca565bb2efd39e80bd0a022fd0a0d1c134f8261b4f4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.7.1/stet-linux-arm64.tar.gz"
      sha256 "2d96c2b0c67811db630bf68a25dcc8acda2e2c0d6d9528cf333819d8c38cca2c"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.7.1/stet-linux-x64.tar.gz"
      sha256 "b48b0412d856704faf23dc7f7efc009eb3b31087d3ec392a538d2922e8d81d4b"
    end
  end

  def install
    bin.install "stet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stet --version")
  end
end
