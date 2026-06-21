class Sideye < Formula
  desc "Read-only companion TUI for CLI coding agents"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.5/sideye-darwin-arm64.tar.gz"
      sha256 "843bd9618679f40c97b04adc8aebd427654c01066faa9ba76765ae310937da95"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.5/sideye-darwin-x64.tar.gz"
      sha256 "527d1392a490d5bb64c28edff3a4e0e0c062edf20dbb5ff5030c9d5dc1aa3e9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.5/sideye-linux-arm64.tar.gz"
      sha256 "3401a8365540c954b56a6d1c818a4aa558b123293f4e8e88d9f9da2bf64b3dab"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.5/sideye-linux-x64.tar.gz"
      sha256 "c1662dcbff1b9e018a10bdfcf0ddc1109727c1ddbddb6e2bf03aee2a22a47009"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
