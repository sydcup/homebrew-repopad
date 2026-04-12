cask "repopad" do
  version "1.2.1"
  sha256 "c19ba40bc6e08d9c341e8473d5ad637538f7a69566bdcae2468685a18e345211"

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
