class Stet < Formula
  desc "Read-only companion TUI for inspecting an agent's changes"
  homepage "https://github.com/jimmy-guzman/stet"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.7.2/stet-darwin-arm64.tar.gz"
      sha256 "c844da80a56877f28f47521ddd9ee05075e6276d9e1bf50aca935b7f32b3231f"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.7.2/stet-darwin-x64.tar.gz"
      sha256 "a60ce91ecc1b4cb09c77dc60856d11172831849aa9b6d7f236f6882eff3313ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.7.2/stet-linux-arm64.tar.gz"
      sha256 "bfcd15855b67fe3fc302f76b2d704fc10a2480ecd5c20188c5873cabfc0be519"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.7.2/stet-linux-x64.tar.gz"
      sha256 "590d0677cd5eeea0b854c25f36d298b0fe498266873b8b95a0cab689c15dafe0"
    end
  end

  def install
    bin.install "stet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stet --version")
  end
end
