cask "kestrel" do
  version "1.2.7"
  sha256 "e21f70c4e99a5fee307cbbcfbb4a0355255cae51496adf6abdcc35abf99a7ea5"

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
