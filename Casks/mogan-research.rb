cask "mogan-research" do
  arch arm: "-arm"

  version "1.2.9.7-rc4"
  sha256 arm:   "f7458ec7e6c184330dfa6f0fa4cf41614d90f83683405df2e6452cccce73f48f",
         intel: "4727a5889cf289e807b097787a97223a325abfb7d922ab5ff6f2bf706dd33e67"

  url "https://github.com/XmacsLabs/mogan/releases/download/v#{version}/MoganResearch-v#{version}#{arch}.dmg",
      verified: "github.com/XmacsLabs/mogan/releases/download/"
  name "Mogan Research"
  desc "one of the distribution of GNU TeXmacs which is a structured scientific editing platform"
  homepage "https://mogan.app/"

  livecheck do
    url "https://github.com/XmacsLabs/mogan/releases"
    strategy :github_latest
  end

  app "MoganResearch.app"

  zap trash: [
    "~/Library/Application Support/XmacsLabs",
    "~/Library/Saved Application State/app.mogan.research.savedState",
  ]
end
