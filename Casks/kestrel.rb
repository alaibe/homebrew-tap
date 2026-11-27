cask "kestrel" do
  version "1.2.27"
  sha256 "3ed0309bff162810f5a9d85991bd8d59c4d0d1999b8fc22cddd19d370056aef1"

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
