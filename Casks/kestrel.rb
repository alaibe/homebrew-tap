cask "kestrel" do
  version "1.2.9"
  sha256 "9e89d13d8a0af5d0bc6b839efac8040250f8d6527651c381f2f10f31f5cc346f"

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
    "~/Library/Containers/cc.laibe.kestrel",
    "~/Library/Preferences/cc.laibe.kestrel.plist",
    "~/Library/WebKit/cc.laibe.kestrel",
    "~/Library/WebKit/kestrel",
  ]
end
