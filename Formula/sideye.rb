class Sideye < Formula
  desc "Read-only companion TUI for CLI coding agents"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.4/sideye-darwin-arm64.tar.gz"
      sha256 "dd14f4860f9855025a56c4ea53010198b50c221941666beb586ff7a40657623f"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.4/sideye-darwin-x64.tar.gz"
      sha256 "b207ad6936a5a4826b632c5abfd67d895cf5861b85929c6c017a7729e7daf4a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.4/sideye-linux-arm64.tar.gz"
      sha256 "10b40603377a8260ee6af39c4e2aacacd6c7e8341d746507435b84a7912af581"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.1.4/sideye-linux-x64.tar.gz"
      sha256 "0defa4b29ed04e126d917d57b8637116de891559bba68aaa53616a79d65a920b"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
