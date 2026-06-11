class Sideye < Formula
  desc "Read-only companion TUI for CLI coding agents"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.3/sideye-darwin-arm64.tar.gz"
      sha256 "a9eb05f4df33177fedf70278d8dfda245550307cdea68db64a0e698d0a9ed31c"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.3/sideye-darwin-x64.tar.gz"
      sha256 "56d38db21a04eedee2a3977b602c783a36e4e5e3956d02c4be5fe03ba79319bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.3/sideye-linux-arm64.tar.gz"
      sha256 "6e74fb19020a3e52be233d17237debafd0a231f7ff1b267ee4d1929b27dce6f4"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.3/sideye-linux-x64.tar.gz"
      sha256 "fe9f78d9c43b1a67662d1da36ede703c0c44213190ca2790c2400977a86e6a09"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
