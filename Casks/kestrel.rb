cask "kestrel" do
  version "1.2.24"
  sha256 "86dc223f4ad74647edbafadf6891a97e8c6c06e2a98ceaeae15e3be59f31974a"

  url "https://github.com/alaibe/kestrel-releases/releases/download/v#{version}/Kestrel-#{version}.dmg"
  name "Kestrel"
  desc "Keyboard-first email client for Gmail and IMAP accounts"
  homepage "https://kestrel.laibe.cc/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Kestrel.app"

  zap trash: [
    "~/Library/Application Support/cc.laibe.kestrel",
    "~/Library/Caches/cc.laibe.kestrel",
    "~/Library/Caches/kestrel",
    "~/Library/Preferences/cc.laibe.kestrel.plist",
    "~/Library/WebKit/cc.laibe.kestrel",
    "~/Library/WebKit/kestrel",
  ]
end
