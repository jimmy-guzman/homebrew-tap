class Sideye < Formula
  desc "Read-only companion TUI with IDE-grade insight into agent changes"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.4.0/sideye-darwin-arm64.tar.gz"
      sha256 "145fd0cdd1768c4e08b4521907874d47e08b28de06a4df16670b95041d1897d8"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.4.0/sideye-darwin-x64.tar.gz"
      sha256 "d3a5d98fe5d70b7f7f4d09765cb9aa59e4bee6ee4105031895cf3a4636eeaa61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.4.0/sideye-linux-arm64.tar.gz"
      sha256 "1b99aefab088c49b693336d78bbf05bfbe6fed1a6debe92fec94ae39cc2ca149"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.4.0/sideye-linux-x64.tar.gz"
      sha256 "86fa5b3344fb2695c5af08d12114eacc73962c90371006ddbaa43fb8bde61fc6"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
