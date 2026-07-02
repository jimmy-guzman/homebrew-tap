class Sideye < Formula
  desc "Read-only companion TUI with IDE-grade insight into agent changes"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.4.1/sideye-darwin-arm64.tar.gz"
      sha256 "17718e140dd02f20d1306628ba6c811828d71074fdff42591a009738acdda198"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.4.1/sideye-darwin-x64.tar.gz"
      sha256 "821e813f6d10aa07144dfe4f3718b8ff109ce66f124876e899d8f66907cedb90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.4.1/sideye-linux-arm64.tar.gz"
      sha256 "dbd24a5b692207ccb8ba592d1fb2aff406b69f0eb3ae242ce4bdc3d4f63cf7ca"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.4.1/sideye-linux-x64.tar.gz"
      sha256 "20964443c599b9869aa1a14fd1e3b268153a7f8449b01da7e3f53d862bc741e1"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
