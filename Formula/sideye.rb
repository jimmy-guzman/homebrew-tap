class Sideye < Formula
  desc "Read-only companion TUI for CLI coding agents"
  homepage "https://github.com/jimmy-guzman/sideye"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.3/sideye-darwin-arm64.tar.gz"
      sha256 "a277a5df353ecf55c67a64ed7122b7f78af0aa12e9c0da778ea5dd302b0ecd42"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.3/sideye-darwin-x64.tar.gz"
      sha256 "89c5f9ab204dc9ce3686e60838a555b95498cc2d8a079815017a130f0385c222"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.3/sideye-linux-arm64.tar.gz"
      sha256 "667eae210526e9694320af25defe2106e49def50dc70d3a59e66481197594d4c"
    end
    on_intel do
      url "https://github.com/jimmy-guzman/sideye/releases/download/v0.2.3/sideye-linux-x64.tar.gz"
      sha256 "925f8d9dc9c529e3c65cc45cb49243b7c00980e17b65e9752a1e80322c630c38"
    end
  end

  def install
    bin.install "sideye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideye --version")
  end
end
