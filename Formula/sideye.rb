class Sideye < Formula
  desc "Read-only companion TUI for CLI coding agents"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.2.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.10/sideye-darwin-arm64.tar.gz"
      sha256 "1402b048f1e5627c34a91564869af8205244cd01af2f3e59062bf958c2e26b1d"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.10/sideye-darwin-x64.tar.gz"
      sha256 "9cce251f59762e964dafefb7636c1f56900bec725c5a5283968498c78952ae07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.10/sideye-linux-arm64.tar.gz"
      sha256 "fd97a5a6f6918fd11dca62b0a120a4984d14b78f42f46caae9d1ad792b16dee4"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.10/sideye-linux-x64.tar.gz"
      sha256 "26ac1c10247b5a16b018dc468cfab3f2d8cc8cb52c31384f7e04c05fea0dbe32"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
