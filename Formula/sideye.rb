class Sideye < Formula
  desc "Read-only companion TUI for CLI coding agents"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.8/sideye-darwin-arm64.tar.gz"
      sha256 "acc49e749c241330a957bdf1f872f8f2570d9ca2962978f5fb000ea7e5d39a33"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.8/sideye-darwin-x64.tar.gz"
      sha256 "11d3cf1bcaa6cce4e9356f19bc9b8597859f4d2120883e50a4a24b5c2a3f2df4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.8/sideye-linux-arm64.tar.gz"
      sha256 "81acbe69c75f83af2a536c255430bf4ffb2baff17212393879accfe54e63f74e"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.8/sideye-linux-x64.tar.gz"
      sha256 "8b39cac1b3598aaaa296f67a20b52907407da87ef3f40695ae55257ca0ecfcc0"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
