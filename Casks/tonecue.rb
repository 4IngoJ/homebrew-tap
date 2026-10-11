cask "tonecue" do
  version "2.1.0"
  sha256 "9b1aa7bd02a955cb7f5ab473c2eb42f01d63f72f8f1b258e62e500b3cdf1c3db"

  url "https://github.com/4IngoJ/tonecue/releases/download/v#{version}/ToneCue-#{version}.dmg"
  name "ToneCue"
  desc "Menu bar app that picks microphone and speakers to fit the situation"
  homepage "https://didact.digital/tonecue/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "ToneCue.app"

  zap trash: [
    "~/Library/Application Support/ToneCue",
    "~/Library/Logs/ToneCue",
  ]
end
