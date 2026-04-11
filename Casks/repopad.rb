cask "repopad" do
  version "1.1.1"
  sha256 "87231e6c646db3fb89424a04afe36c1c05cb0f676950960115f66253a7f654b0"

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
