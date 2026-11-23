class Stet < Formula
  desc "Read-only companion TUI for inspecting an agent's changes"
  homepage "https://github.com/jimmy-guzman/stet"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.12.0/stet-darwin-arm64.tar.gz"
      sha256 "64174e577f61eca6ef9ac9c8c50ef367253e3f827fcde0ea0cb1506a814a566c"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.12.0/stet-darwin-x64.tar.gz"
      sha256 "b1c249c027f2fa76930374bb5746cc56dd2e0b1219ddff30278a54972a89ede7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.12.0/stet-linux-arm64.tar.gz"
      sha256 "8aad2d3f6d0fbbd07348bea5ed719179adfff2e1122603142453e95631200f28"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.12.0/stet-linux-x64.tar.gz"
      sha256 "54665de2639ff1ce1269fdc928f411cae5470a1c59a6ceeb0eee9c02472561ab"
    end
  end

  def install
    bin.install "stet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stet --version")
  end
end
