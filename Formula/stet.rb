class Stet < Formula
  desc "Read-only companion TUI for inspecting an agent's changes"
  homepage "https://github.com/jimmy-guzman/stet"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.9.0/stet-darwin-arm64.tar.gz"
      sha256 "4d54b87d30739b91e60c6209de4eb0cb43b9e72b7d3ad52a427cd439d74baf34"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.9.0/stet-darwin-x64.tar.gz"
      sha256 "e02d6f4949da3545342cb14a422e146d78c266376090977366d1e95b08ac0cf4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.9.0/stet-linux-arm64.tar.gz"
      sha256 "2a244ec2e29d1f15be2e842bbf11834c62a151440b361faaec1d4dc96840a6d4"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.9.0/stet-linux-x64.tar.gz"
      sha256 "aec2345f65d17afbbc44820e3bebbcb684f8e3067e3f1dbdc3387d203e41ee10"
    end
  end

  def install
    bin.install "stet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stet --version")
  end
end
