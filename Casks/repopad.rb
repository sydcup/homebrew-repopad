cask "repopad" do
  version "1.0.0"
  sha256 "28e13fa7c208da7ad8b78a0de957a0089de5d1bd2129a36cb03262928eb94acd"

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
