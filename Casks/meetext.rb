cask "meetext" do
  # scripts/release.sh in meetext-app sets the version and the checksum of each release.
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/aycandv/meetext-app/releases/download/v#{version}/Meetext-#{version}.zip"
  name "Meetext"
  desc "Record calls and write notes with action items, transcribed locally"
  homepage "https://github.com/aycandv/meetext-app"

  depends_on arch: :arm64
  depends_on formula: "whisperkit-cli"
  depends_on macos: :tahoe

  app "Meetext.app"

  zap trash: [
    "~/Library/Application Support/Meetext",
    "~/Library/Preferences/app.meetext.Meetext.plist",
  ]
end
