cask "statim" do
  version "0.7.17"
  sha256 "95a541239cb4e7ab933bb1d4cf29122b6661d7ec0a05b362cdf8819f9d1c8623"

  url "https://github.com/alaibe/statim/releases/download/v#{version}/Statim-#{version}.dmg"
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
