cask "grenier" do
  version "0.1.0"
  sha256 "6844e9fc63349b680d96e6480a7142bd87a8c2030323ef53432c210d7705eee3"

  url "https://github.com/alaibe/grenier/releases/download/v#{version}/Grenier-#{version}.dmg"
  name "Grenier"
  desc "Caches what coding agents learn and controls their spend"
  homepage "https://grenier.laibe.cc/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Grenier.app"

  zap trash: [
    "~/Library/Application Support/cc.laibe.grenier",
    "~/Library/Caches/cc.laibe.grenier",
    "~/Library/WebKit/cc.laibe.grenier",
  ]
end
