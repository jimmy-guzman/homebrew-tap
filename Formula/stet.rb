class Stet < Formula
  desc "Read-only companion TUI for inspecting an agent's changes"
  homepage "https://github.com/jimmy-guzman/stet"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.10.1/stet-darwin-arm64.tar.gz"
      sha256 "d6a45d7317d3663e3c16109c2129888a2278785a77db26a111659024846dc4d1"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.10.1/stet-darwin-x64.tar.gz"
      sha256 "6f70f6b28839044b08d839cd47bd11c3292788aae05b37abe808aad97bfccd25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.10.1/stet-linux-arm64.tar.gz"
      sha256 "1b998073ae7a113122c5ddb51c7a5fe31484f2a7e5de3086df2881e359c2fe08"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.10.1/stet-linux-x64.tar.gz"
      sha256 "8c98e34b17c76ee2ffb1e4033ef49f8f612cb94cfe3f214b0ac88c09d111156b"
    end
  end

  def install
    bin.install "stet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stet --version")
  end
end
