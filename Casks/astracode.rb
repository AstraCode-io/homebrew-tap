cask "astracode" do
  version "1.126.07597"
  sha256 "df9cc4bfd078f3da49aa85bc6c877b8b38e0bfb271dacb25a67e52c601de505a"

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
