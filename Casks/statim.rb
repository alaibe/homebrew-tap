cask "statim" do
  version "0.7.11"
  sha256 "7d05d4f503259a9a5f2280aa055393cdb5f12eca7e2e102cf453a42ce154cb26"

  url "https://github.com/alaibe/statim/releases/download/v#{version}/Statim_#{version}_universal.dmg"
  name "Statim"
  desc "Messenger for XMTP, Matrix, Telegram, Nostr and Status"
  homepage "https://statim.laibe.cc/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Statim.app"
  binary "#{appdir}/Statim.app/Contents/MacOS/statim"

  zap trash: [
    "~/Library/Application Support/im.statim.app",
    "~/Library/Caches/im.statim.app",
    "~/Library/Caches/statim",
    "~/Library/Preferences/im.statim.app.plist",
    "~/Library/WebKit/im.statim.app",
    "~/Library/WebKit/statim",
  ]
end
