cask "astracode" do
  version "1.126.07532"
  sha256 "d11a24b30c73a45dc58c8c42a69f47fba3ac3a045f94ae6a2f55e1dbe85f7c6e"

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
