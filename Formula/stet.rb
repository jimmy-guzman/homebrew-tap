class Stet < Formula
  desc "Read-only companion TUI for inspecting an agent's changes"
  homepage "https://github.com/jimmy-guzman/stet"
  version "0.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.13.1/stet-darwin-arm64.tar.gz"
      sha256 "1521961d51294c31e79aceef1eb985fd93d42915b292fcd9c22c9f3c4508628a"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.13.1/stet-darwin-x64.tar.gz"
      sha256 "c360beb31dd390d02ca2542a07bab57af90d3606343b69a71050990659d0b8f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.13.1/stet-linux-arm64.tar.gz"
      sha256 "85698235cdb8c962cde49aa564352d99f28eb3f209dce9a631faa13dbd4ddb24"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.13.1/stet-linux-x64.tar.gz"
      sha256 "9520fbdede72102c2e7ef037f732fe5ea54f9c564757a2b7853407d7b2825ee4"
    end
  end

  def install
    bin.install "stet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stet --version")
  end
end
