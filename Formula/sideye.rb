class Sideye < Formula
  desc "Read-only companion TUI with IDE-grade insight into agent changes"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.5/sideye-darwin-arm64.tar.gz"
      sha256 "c1307ae52485a8d9e20e6d4847f80c8b3b3ead2120c14ec429c3c8ebbcff9380"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.5/sideye-darwin-x64.tar.gz"
      sha256 "2dfbc971b2563d73987c55b0a1b67da912a3c50d6c1808c7072ac3628a0155b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.5/sideye-linux-arm64.tar.gz"
      sha256 "cac6edc6e3f80003734e29d7f670701711a1dff02e414b2bac2b7b56f2936793"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.5/sideye-linux-x64.tar.gz"
      sha256 "4d23ae18972daab442dc88c2e93a133cbc48fe50cb5a2b545074d034ae8e281e"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
