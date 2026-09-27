cask "astracode" do
  version "1.126.06475"
  sha256 "d364ccfb501ddc288c31347bef52cfb12c7993ac05839dbc6253f575a71c05e3"

  url "https://astracode.io/downloads/AstraCode-darwin.zip"
  name "AstraCode"
  desc "AI code editor"
  homepage "https://astracode.io/"

  livecheck do
    url "https://astracode.io/downloads/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "AstraCode.app"

  zap trash: [
    "~/.astracode",
    "~/Library/Application Support/AstraCode",
    "~/Library/Caches/io.astracode.app",
    "~/Library/Caches/io.astracode.app.ShipIt",
    "~/Library/HTTPStorages/io.astracode.app",
    "~/Library/Preferences/io.astracode.app.plist",
    "~/Library/Saved Application State/io.astracode.app.savedState",
  ]
end
