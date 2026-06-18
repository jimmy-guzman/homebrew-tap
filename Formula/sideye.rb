class Sideye < Formula
  desc "Read-only companion TUI for CLI coding agents"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.4/sideye-darwin-arm64.tar.gz"
      sha256 "4516aea309372e13fc87513b73dc5f5b9e835bd168f5195ec57e4bfaf5176c88"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.4/sideye-darwin-x64.tar.gz"
      sha256 "105a785e99ede0e1db192cdc5c2a4a8a41c634c2106df2f280c9b1c35ecf1920"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.4/sideye-linux-arm64.tar.gz"
      sha256 "e87c32e2745c7de8c93c6be62794d4ebeb1ec6db4c7440be365caca13953e0c3"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.4/sideye-linux-x64.tar.gz"
      sha256 "23b5a25da8f2813bcd612c8c5fe52a51bf6ced2368fd489a936feafed5799b8a"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
