cask "notras" do
  version "0.11.0"
  sha256 "28bcc5f41a645b43cc0f9f79c3f72095db6c5df7d768d8e4ed3ec7f321cf5f95"

  url "https://github.com/jimmy-guzman/notras/releases/download/v#{version}/notras_0.11.0_universal.dmg"
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
