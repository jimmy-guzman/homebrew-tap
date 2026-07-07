class Stet < Formula
  desc "Read-only companion TUI for inspecting an agent's changes"
  homepage "https://github.com/jimmy-guzman/stet"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/v0.6.2/stet-darwin-arm64.tar.gz"
      sha256 "b417ef35b4f7c167ea830b3f01105355943cd57fc8c8400553c8b006245b531c"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/v0.6.2/stet-darwin-x64.tar.gz"
      sha256 "9ab2327ee6b1e347fbbd6b81c65e64ccd56ebda7c2d74961a7044f29ce6f4a29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/v0.6.2/stet-linux-arm64.tar.gz"
      sha256 "f4deb9fa193a6415f355bb8d839dc7e1f12a206a6a4794144df4cb1008465d9d"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/v0.6.2/stet-linux-x64.tar.gz"
      sha256 "f2ba5780b6738c4f58e4712c085a4f898ad581efe9371dcb7a197e1ea19a4f39"
    end
  end

  def install
    bin.install "stet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stet --version")
  end
end
