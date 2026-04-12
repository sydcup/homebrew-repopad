cask "repopad" do
  version "1.2.5"
  sha256 "eaa6b789656c0f0d177a8eeea05290f288df9a2cbae99aa88a6bbc4d7b674765"

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
