cask "kestrel" do
  version "1.2.6"
  sha256 "c751ea97c3bb1c2d90c3d09a6207d0b05a761308689c07a19678a3da14a9c303"

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
