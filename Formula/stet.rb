class Stet < Formula
  desc "Read-only companion TUI for inspecting an agent's changes"
  homepage "https://github.com/jimmy-guzman/stet"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.7.3/stet-darwin-arm64.tar.gz"
      sha256 "1f09a93397d142a5f2affca4081da21cc3ce5e610f04d0fbc8a69a4db6b26a45"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.7.3/stet-darwin-x64.tar.gz"
      sha256 "61bd99445d9bddcda303c714afb45a271f2eec99dedf88f30deab02c88e9ed60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.7.3/stet-linux-arm64.tar.gz"
      sha256 "7b23c824d29c16435fc245b2260a226f18f4b029745498419777d2184f91d60f"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.7.3/stet-linux-x64.tar.gz"
      sha256 "2b421425a267da9281e14ab3372e9a76e7dab8ef16633c38604e87e29ed24c68"
    end
  end

  def install
    bin.install "stet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stet --version")
  end
end
