class Sideye < Formula
  desc "Read-only companion TUI with IDE-grade insight into agent changes"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.5.0/sideye-darwin-arm64.tar.gz"
      sha256 "8e9ba92aafb7902dfed9ed40781af5b280163617ba266655463b1b2f258ab6db"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.5.0/sideye-darwin-x64.tar.gz"
      sha256 "d454bbbc5b16aa956da80c4b12c742da04ad4fc9f96681ddd3fdc3ea20274e45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.5.0/sideye-linux-arm64.tar.gz"
      sha256 "9519a8d3f7ff3d9611ab5edbb6c0f0a7123bf517f49ee031277271f8f02d5898"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.5.0/sideye-linux-x64.tar.gz"
      sha256 "ae38d1162ed798faa186b6bd1a8da751ba1fd8f837c683f14bd1dddb6adfdb80"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
