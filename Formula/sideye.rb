class Sideye < Formula
  desc "Read-only companion TUI for CLI coding agents"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.6/sideye-darwin-arm64.tar.gz"
      sha256 "25ce7807605b0754217075f8f36fa26100b8cf0b53e569a20b97d53bd3c04e74"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.6/sideye-darwin-x64.tar.gz"
      sha256 "61b62fb9b8219ce6aa7668e2d3e5bbf5e61b5662433cc1e89fad401756985208"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.6/sideye-linux-arm64.tar.gz"
      sha256 "2c121e92e08c45cce93e67ca0d13731adb3fb059fcacec51478ae0db2efd3fc3"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.6/sideye-linux-x64.tar.gz"
      sha256 "d35697445276a840855b1ff9bd46bfd95bda866813c445d213f04f6253597064"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
