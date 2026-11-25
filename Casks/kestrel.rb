cask "kestrel" do
  version "1.2.25"
  sha256 "befb92b5bb32d53ef00a5b9e0220abd3adc8f26cf3dd20509f92469cbfcd9776"

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
