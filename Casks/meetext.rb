cask "meetext" do
  # scripts/release.sh in meetext-app sets the version and the checksum of each release.
  version "0.1.1"
  sha256 "c6a9d8f1981b5b6d2df490f1484dde93ab344fc946e8584f13ff4384553138cd"

  url "https://github.com/aycandv/homebrew-meetext/releases/download/v#{version}/Meetext-#{version}.zip"
  name "Meetext"
  desc "Record calls and write notes with action items, transcribed locally"
  homepage "https://meetext.aycandv.dev/"

  depends_on arch: :arm64
  depends_on formula: "whisperkit-cli"
  depends_on macos: :tahoe

  app "Meetext.app"

  zap trash: [
    "~/Library/Application Support/Meetext",
    "~/Library/Preferences/app.meetext.Meetext.plist",
  ]
end
