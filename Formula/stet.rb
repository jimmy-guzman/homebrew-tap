class Stet < Formula
  desc "Read-only companion TUI for inspecting an agent's changes"
  homepage "https://github.com/jimmy-guzman/stet"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.11.0/stet-darwin-arm64.tar.gz"
      sha256 "488d921ecc0facd406080de8f8f760c61c2eeda5d50c178b05e227207eb9e1ff"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.11.0/stet-darwin-x64.tar.gz"
      sha256 "aa9f48ec630f2a035427fceb4a1bbcb889095fd4b51882ee9e6bc241773d2ab1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.11.0/stet-linux-arm64.tar.gz"
      sha256 "53111692175c60fd50b456fc1d974d68d332e02944da55b85f79a0cef79b7afe"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.11.0/stet-linux-x64.tar.gz"
      sha256 "59f51bfcd8d52f64325e0ad9900a32880486492534e8d74cdf417948afafd10f"
    end
  end

  def install
    bin.install "stet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stet --version")
  end
end
