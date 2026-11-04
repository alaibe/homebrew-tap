cask "kestrel" do
  version "1.2.1"
  sha256 "0a9a50341c2c0178aa5ed5b46050c1ce591bd97fba3e68297c156db28530e149"

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

  zap trash: "~/Library/Containers/cc.laibe.kestrel"
end
