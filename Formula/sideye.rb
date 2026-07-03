class Sideye < Formula
  desc "Read-only companion TUI with IDE-grade insight into agent changes"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.4.2/sideye-darwin-arm64.tar.gz"
      sha256 "f36e7923d15c57842329a6efacb43ceffa6c6e8114a29df9ad20f2b876bfc213"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.4.2/sideye-darwin-x64.tar.gz"
      sha256 "d016b02f888ed9e59bee44ec98eab260b298dc7b5e42bcacb0bc163eefbc7442"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.4.2/sideye-linux-arm64.tar.gz"
      sha256 "a3b7d367d66832550f98bbc1b6ad0bfdd319cdf145976ab1786189e376a4e421"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.4.2/sideye-linux-x64.tar.gz"
      sha256 "faf4162c26f8cbee381d182d342860b780f79e1cfbcb2761652ef9c8b7739bbf"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
