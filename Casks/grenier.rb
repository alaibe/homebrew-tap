cask "grenier" do
  version "0.1.4"
  sha256 "356370f6bdfb0791262ad0437008d7ab0c0d0ab6128501ab3843ca6a6f4fb3ab"

  url "https://github.com/alaibe/grenier/releases/download/v#{version}/Grenier-#{version}.dmg"
  name "Grenier"
  desc "Caches what coding agents learn and controls their spend"
  homepage "https://grenier.laibe.cc/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Grenier.app"
  binary "#{appdir}/Grenier.app/Contents/Resources/grenier/bin/grenier"

  zap trash: [
    "~/Library/Application Support/cc.laibe.grenier",
    "~/Library/Caches/cc.laibe.grenier",
    "~/Library/WebKit/cc.laibe.grenier",
  ]
end
