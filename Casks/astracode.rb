cask "astracode" do
  version "1.126.07524"
  sha256 "096161bf27787be348cdbfaddfdd887d7460bd27698285a76480ec09d5a8ccdf"

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
