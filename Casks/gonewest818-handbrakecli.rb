cask "gonewest818-handbrakecli" do
  version "1.5.1"
  sha256 "328ad1fbacb855b644b63899450c004cb18e5e819ad519549c4c4bc863a60f90"

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

