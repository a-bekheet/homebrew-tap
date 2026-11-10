cask "time-tracker" do
  version "2.0"
  sha256 "03bd66227fc3ff6832e0fe7f7a922d5f85bf5b4fd2fe9d993828a7defb66aaef"

  url "https://github.com/a-bekheet/time-tracker/releases/download/v#{version}/Time-Tracker-#{version}-macOS.zip"
  name "Time Tracker"
  desc "Local-first menu bar time tracker for macOS"
  homepage "https://github.com/a-bekheet/time-tracker"

  depends_on macos: :sonoma

  app "Time Tracker.app"

  caveats <<~EOS
    This release is ad hoc signed and unnotarized. If macOS blocks it, see
    https://support.apple.com/guide/mac-help/open-a-mac-app-from-an-unidentified-developer-mh40616/mac
  EOS
end
