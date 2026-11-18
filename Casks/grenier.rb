cask "grenier" do
  version "0.1.3"
  sha256 "a60e12f2eeb76706716905ed8a186db97ebc5bcfcea355edbe076c6328f24fdd"

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
