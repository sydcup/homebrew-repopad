cask "repopad" do
  version "1.1.0"
  sha256 "b75d86bc28b6ece305fd23f0d05ec3f5354e4c6263c2d585b2af2d395a941306"

  url "https://github.com/sydcup/repopad-releases/releases/download/v#{version}/RepoPad-#{version}.zip"
  name "RepoPad"
  desc "Menu bar app for quickly managing Git repositories"
  homepage "https://repopad.com/"

  livecheck do
    url "https://github.com/sydcup/repopad-releases/releases/latest"
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: ">= :tahoe"

  app "RepoPad.app"

  zap trash: [
    "~/Library/Preferences/com.sydcup.repopad.plist",
    "~/Library/Application Support/RepoPad",
    "~/Library/Caches/com.sydcup.repopad",
    "~/Library/HTTPStorages/com.sydcup.repopad",
    "~/Library/Saved Application State/com.sydcup.repopad.savedState",
  ]
end
