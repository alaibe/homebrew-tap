cask "kestrel" do
  version "1.2.17"
  sha256 "af3ae9bc00d695268b4eff6219d40bf80d5b98e5fef82b3b0700d6a36ff70114"

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
