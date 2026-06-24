class Sideye < Formula
  desc "Read-only companion TUI for CLI coding agents"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.9/sideye-darwin-arm64.tar.gz"
      sha256 "9851dd63cebf8d0e3ff2910d37c11b40a6474a9fed9182664c262bc694a37dc5"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.9/sideye-darwin-x64.tar.gz"
      sha256 "0c85cd1e3da2bcd243065b7007c48ea2c8d955246dccdb0435f6e6d267266475"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.9/sideye-linux-arm64.tar.gz"
      sha256 "4622382f5aab1439df4c329ac8414f31692e0f41aba48d2bf99c8041e4020bab"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.9/sideye-linux-x64.tar.gz"
      sha256 "54dbf8d2ddb3de83be2503a5c5cd8e4920857281104f2adb1221edbc86d5fbd3"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
