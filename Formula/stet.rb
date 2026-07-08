class Stet < Formula
  desc "Read-only companion TUI for inspecting an agent's changes"
  homepage "https://github.com/jimmy-guzman/stet"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/v0.7.0/stet-darwin-arm64.tar.gz"
      sha256 "21667049a247a6eedca4a2b89e3f2ae9b9193128c0a52d0c3eeb297e1f1519a8"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/v0.7.0/stet-darwin-x64.tar.gz"
      sha256 "8ab5acfc44517c6c573e56ded38ea552914fba1f3911cc66a5c02efdf9121328"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/v0.7.0/stet-linux-arm64.tar.gz"
      sha256 "43975942cdc8e203a91f5865fbb104e8315a0907518cfbb609ba97ed6b56f79c"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/v0.7.0/stet-linux-x64.tar.gz"
      sha256 "456f1ef3954e1c75c97184d5ed89818ec51f9dceec998212abf9d9d430d59ca6"
    end
  end

  def install
    bin.install "stet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stet --version")
  end
end
