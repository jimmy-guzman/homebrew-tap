class Sideye < Formula
  desc "Read-only companion TUI for CLI coding agents"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.1/sideye-darwin-arm64.tar.gz"
      sha256 "6ddfee3c9154c538b8c262a99de8b0f69f708dc1437663ea45926afd6b840d86"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.1/sideye-darwin-x64.tar.gz"
      sha256 "c1cd1ce6910d50f7a6fcc767c9b3908e55b0dc2ff00e04c53130d4b5d5b08ec8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.1/sideye-linux-arm64.tar.gz"
      sha256 "212f9cee12660cbc4e44591645a7204574e8c1fc825e92d432831a31d4b420f7"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.1/sideye-linux-x64.tar.gz"
      sha256 "c59e21071e48b1410663b39debdbe63a20578064ff440ee00ce3e3804b89b5c1"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
