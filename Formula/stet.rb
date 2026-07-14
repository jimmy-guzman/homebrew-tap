class Stet < Formula
  desc "Read-only companion TUI for inspecting an agent's changes"
  homepage "https://github.com/jimmy-guzman/stet"
  version "0.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.7.4/stet-darwin-arm64.tar.gz"
      sha256 "f60e28e28f5829aff94183f84ca2e867fb8723af1ab8fe6e5f33a61a948e9d94"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.7.4/stet-darwin-x64.tar.gz"
      sha256 "87cde60b56a8f32bb7825bfdb86099b788bdcbfd5abbd35c2ae8560bacbe2973"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.7.4/stet-linux-arm64.tar.gz"
      sha256 "d6fdc823ac2ba4255e69c6318cac049e97fffb75090abb20833fd8ea2020b114"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.7.4/stet-linux-x64.tar.gz"
      sha256 "909ce84f26773d9af23bd68a06b75906df0b08e8f6d08868dc5d508eb97cfc2b"
    end
  end

  def install
    bin.install "stet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stet --version")
  end
end
