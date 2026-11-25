class Stet < Formula
  desc "Read-only companion TUI for inspecting an agent's changes"
  homepage "https://github.com/jimmy-guzman/stet"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.13.0/stet-darwin-arm64.tar.gz"
      sha256 "b0f58ca29adf10059734e067304a91205119e14069d58ce62007fbea4b9a27de"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.13.0/stet-darwin-x64.tar.gz"
      sha256 "6f5e196912a6e82932f67939b09e4bb0efc24901e3d524db7a4e56dbe530d9b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.13.0/stet-linux-arm64.tar.gz"
      sha256 "8296029e82562e7381635eec977debe8d5b5870a95ed24dd7118eee22c2fb624"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/stet/releases/download/stet-v0.13.0/stet-linux-x64.tar.gz"
      sha256 "3425dbcb7a3f8450c0e56819228c94ae6d364b87533c121a307b82157bc86179"
    end
  end

  def install
    bin.install "stet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stet --version")
  end
end
