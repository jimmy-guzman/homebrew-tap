class Sideye < Formula
  desc "Read-only companion TUI for CLI coding agents"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.5/sideye-darwin-arm64.tar.gz"
      sha256 "6265e3bfc22e9ddd33087b1893dd9239fd4c21f67bb340e1ddebd1aeedc52f85"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.5/sideye-darwin-x64.tar.gz"
      sha256 "6701a902a04c772129725784861623bf60dbd714a1580167081f78c9e501a33b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.5/sideye-linux-arm64.tar.gz"
      sha256 "bad3efdcb70cdd4c7802a1057fce271ff0624fb205863d708f82444d023baf0e"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.5/sideye-linux-x64.tar.gz"
      sha256 "e34b7f02ec08d366a9ed3b54720859616175234ec22ed227a5ffc0eda67dadeb"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
