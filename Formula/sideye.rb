class Sideye < Formula
  desc "Read-only companion TUI with IDE-grade insight into agent changes"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.4.3/sideye-darwin-arm64.tar.gz"
      sha256 "d579c325c642a686b358e8ecf14add87eb3011e6e9af6ea7de82ef824bc7aeb0"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.4.3/sideye-darwin-x64.tar.gz"
      sha256 "15570d97a63ebfc9c9a91deb607887432a22a9636ab3f4820dd7099aba937098"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.4.3/sideye-linux-arm64.tar.gz"
      sha256 "f0fc2dad0a5334523ed16e540ca22cc7314c343ce88a85e0737e972acf054e4e"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.4.3/sideye-linux-x64.tar.gz"
      sha256 "66f09ffcf4eb7aa19a988ddc56ed8717dd9f83df6992db65b28b5f5a45eea9a2"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
