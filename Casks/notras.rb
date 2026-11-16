cask "notras" do
  version "0.12.8"
  sha256 "224f86258074050ffbc073e487b9ec720ec90ac922377fada7cff083eb3e7071"

  url "https://github.com/jimmy-guzman/notras/releases/download/v#{version}/notras_0.12.8_universal.dmg"
  name "notras"
  desc "Local-first, keyboard-driven notes app"
  homepage "https://github.com/jimmy-guzman/notras"

  auto_updates true
  depends_on macos: :tahoe

  app "notras.app"

  caveats <<~CAVEATS
    notras is not yet signed with an Apple Developer ID, so macOS quarantines it
    on first launch. Clear it with:

      xattr -dr com.apple.quarantine /Applications/notras.app
  CAVEATS

  # Deliberately excludes the notes folder (~/notras by default): those are your
  # files, not app state.
  zap trash: [
    "~/Library/Application Support/codes.jimmy.notras",
    "~/Library/Caches/codes.jimmy.notras",
    "~/Library/Preferences/codes.jimmy.notras.plist",
    "~/Library/Saved Application State/codes.jimmy.notras.savedState",
    "~/Library/WebKit/codes.jimmy.notras",
  ]
end
