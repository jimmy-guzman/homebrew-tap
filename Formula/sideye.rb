class Sideye < Formula
  desc "Read-only companion TUI with IDE-grade insight into agent changes"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.4/sideye-darwin-arm64.tar.gz"
      sha256 "f4854ce905bb96c7bb51fae7a9b2a434c3ec64a76efbc378cf1c24c636e1bce6"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.4/sideye-darwin-x64.tar.gz"
      sha256 "823fbc9fe5f198b4c337b00caa3aa0c301218f62dda73ead3081a7022375b94d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.4/sideye-linux-arm64.tar.gz"
      sha256 "9a004ab27b3ab366636d9e6173a6197648954ebdc9163a60aa0d1b4e11301805"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.3.4/sideye-linux-x64.tar.gz"
      sha256 "d7fe0b90fa73511cf7189d1d422e43acb56ddaef92cd7ab48577ac2b5aa1ae2c"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
