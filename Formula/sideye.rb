class Sideye < Formula
  desc "Read-only companion TUI with IDE-grade insight into agent changes"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.2/sideye-darwin-arm64.tar.gz"
      sha256 "ccfec3ab063fb66c3a3e95755c1a6cff18ed3aa54a5b4ed762160a8e5b8a54b7"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.2/sideye-darwin-x64.tar.gz"
      sha256 "4862378842345183f4fb4bba0a941e4ba0959bd046fbeca729bda56ed9295f71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.2/sideye-linux-arm64.tar.gz"
      sha256 "9c1d14a566e1a3452327827d60c2eae8ecaa55aa84f3c7300e9a005ec6513768"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.2/sideye-linux-x64.tar.gz"
      sha256 "dbc9d98f977615eeefdab023060c288028d2b673b801152c0f55052cbf46a6c7"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
