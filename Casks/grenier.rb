cask "grenier" do
  version "0.1.10"
  sha256 "9b527f03da9fcde254405f5017e9f9763cda776ae781bdc221d4730832da8819"

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
