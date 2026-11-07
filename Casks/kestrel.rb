cask "kestrel" do
  version "1.2.5"
  sha256 "70ff13e2acfbd23fda6c3f5e8e352f27466ab8e6f9903b87fec1e2b9dcdde6dc"

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
