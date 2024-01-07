cask "gonewest818-handbrakecli" do
  version "1.7.2"
  sha256 "4211f704e8fa39968a85b23b880ee5bfaf7b575dca1fecfc94788fe449d38666"

  url "https://github.com/HandBrake/HandBrake/releases/download/#{version}/HandBrakeCLI-#{version}.dmg",
      verified: "github.com/HandBrake/HandBrake/"
  name "HandBrakeCLI"
  desc "Open-source video transcoder"
  homepage "https://handbrake.fr/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  binary "HandBrakeCLI"

end

