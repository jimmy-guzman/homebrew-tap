class Sideye < Formula
  desc "Read-only companion TUI for CLI coding agents"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.6/sideye-darwin-arm64.tar.gz"
      sha256 "49a126b2761766dad518f8c98ee85f4159c677d8537bb22840fe323518754ead"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.6/sideye-darwin-x64.tar.gz"
      sha256 "bb63169cb5bdfc781cfdd7da023543a634956558c46b3a687169304e1aa5b475"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.6/sideye-linux-arm64.tar.gz"
      sha256 "c24d9410948addaa6cb6cfb5b8baef15f823b404b499b80f52973bdd2217cca8"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.6/sideye-linux-x64.tar.gz"
      sha256 "19ba2aac87ef7c163a7e76c6ae12f429affd3da14e19864b6915930428191026"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
