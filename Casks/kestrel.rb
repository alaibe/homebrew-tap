cask "kestrel" do
  version "1.1.0"
  sha256 "f381b8f0c5a665b8c80e288b7c2de218a0347a39e6f49185c60ac85063191cd2"

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
