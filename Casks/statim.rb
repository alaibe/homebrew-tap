cask "statim" do
  version "0.7.10"
  sha256 "5dd7e8c55438c7cc2da03dc3217fa51717d0146ba8efbb60355c2f933601c820"

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
