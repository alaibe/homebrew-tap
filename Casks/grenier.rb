cask "grenier" do
  version "0.1.7"
  sha256 "b245242c4a32c3b69ca7b060abb5a95c411741dc5605b8e71ec6adb4e0261a77"

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
