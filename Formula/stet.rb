class Stet < Formula
  desc "Read-only companion TUI for inspecting an agent's changes"
  homepage "https://github.com/jimmy-guzman/stet"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.10.0/stet-darwin-arm64.tar.gz"
      sha256 "a246e6e0361a941f0944a8fed196626207c2b88762c7f8c679bc8c8f4ad82cfd"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.10.0/stet-darwin-x64.tar.gz"
      sha256 "577130cd75cbeb47797a6fe63bce0270743a834906b6c1c821c528dc4621f4ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.10.0/stet-linux-arm64.tar.gz"
      sha256 "641b5b4d5d16260f6fe5f6e1619ca10dc0405b2b31e66cbda6b5bbdcd1eedd88"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.10.0/stet-linux-x64.tar.gz"
      sha256 "356f8b35145e09364621bd4f87f00c10c90efca3cdb4f1c7c751bf0e2dff791a"
    end
  end

  def install
    bin.install "stet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stet --version")
  end
end
