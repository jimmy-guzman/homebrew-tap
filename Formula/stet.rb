class Stet < Formula
  desc "Read-only companion TUI for inspecting an agent's changes"
  homepage "https://github.com/jimmy-guzman/stet"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/v0.6.1/stet-darwin-arm64.tar.gz"
      sha256 "ee77e9602aea4956cc3ae51f1a755314a415f4cf922a8652401367df567cfab1"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/v0.6.1/stet-darwin-x64.tar.gz"
      sha256 "b8b92373b9077b74241af3d04a9230fd052dcc6d1148bbbc0878743c67c5523d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/v0.6.1/stet-linux-arm64.tar.gz"
      sha256 "c347a6c66a86bb2020931fb4f697e7a1e09e962731880f6a9d9dc1415ac839a6"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/v0.6.1/stet-linux-x64.tar.gz"
      sha256 "e0221478ec5fb2a5829f0aab02346174b7b8e9c03f49453271a4648b54607d6b"
    end
  end

  def install
    bin.install "stet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stet --version")
  end
end
