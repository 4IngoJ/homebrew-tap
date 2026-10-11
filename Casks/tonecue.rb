cask "tonecue" do
  version "2.0.0"
  sha256 "828032beba13ed0b26445676a51a1151552d5987bf69ab8422356dbc1d342ab1"

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
