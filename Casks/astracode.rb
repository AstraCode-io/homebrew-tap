cask "astracode" do
  version "1.126.06775"
  sha256 "cf0bd7dbe668b1c2d4187696c32736c97cc2ad4564b5dae59f89e1a77db239ea"

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
