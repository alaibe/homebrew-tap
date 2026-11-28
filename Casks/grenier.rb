cask "grenier" do
  version "0.1.12"
  sha256 "ad7791309da4efd44b49ba1888f7c8d4356ac672082bd4e7ab23aca1484a565d"

  url "https://github.com/alaibe/grenier/releases/download/v#{version}/Grenier-#{version}.dmg"
  name "Grenier"
  desc "Caches what coding agents learn and controls their spend"
  homepage "https://grenier.laibe.cc/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Grenier.app"
  binary "#{appdir}/Grenier.app/Contents/Resources/grenier/bin/grenier"

  zap trash: [
    "~/Library/Application Support/cc.laibe.grenier",
    "~/Library/Caches/cc.laibe.grenier",
    "~/Library/WebKit/cc.laibe.grenier",
  ]
end
