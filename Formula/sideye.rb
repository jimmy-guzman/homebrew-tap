class Sideye < Formula
  desc "Read-only companion TUI for CLI coding agents"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.0/sideye-darwin-arm64.tar.gz"
      sha256 "28225a16c3ff6e304224ecb38fafcced9c0f50618febdc1e9643a6fe8f21c7c8"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.0/sideye-darwin-x64.tar.gz"
      sha256 "a50de329d042575d1ffd2c93f79a9899ad1faac7a5daf4b680eeb67c33e70ef9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.0/sideye-linux-arm64.tar.gz"
      sha256 "4572d8897c51be583c84adeb1045768caf818d3d8bd5c0a9611ad997591181b0"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.0/sideye-linux-x64.tar.gz"
      sha256 "4edcfcee31242d15a19738bd425842e7f2ec440327d25298b21deba54e4fb978"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
