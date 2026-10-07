cask "statim" do
  version "0.7.5"
  sha256 "bd799565fcb7b086f79338034d47c03a1dad2756597b7e3debdc5e8170c398f2"

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
