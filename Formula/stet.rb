class Stet < Formula
  desc "Read-only companion TUI for inspecting an agent's changes"
  homepage "https://github.com/jimmy-guzman/stet"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.9.1/stet-darwin-arm64.tar.gz"
      sha256 "248a94ea9c3f65a967ff36fda0cec32bb4c31aa9a4f710e661f3c2280e432374"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.9.1/stet-darwin-x64.tar.gz"
      sha256 "64d7c5a5abc18034dfe741ae421a76f6473fb6dd51da7023aa34e56e99a78768"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.9.1/stet-linux-arm64.tar.gz"
      sha256 "0a215df8eb9f788d57d0457ce9d94eed3680f0c258977ff97e479be91c7e2616"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.9.1/stet-linux-x64.tar.gz"
      sha256 "3e0f39129f2b6b0a28d1eb6cbb09657526d8ede1c90eaa2bac4353da613ad877"
    end
  end

  def install
    bin.install "stet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stet --version")
  end
end
