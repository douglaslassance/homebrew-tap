cask "ramble" do
  version "1.1.0"
  sha256 "b0a2f99343b795a4c05a1307abead836180a8fdc2bddb1b5e4cfea99c2f73cf2"

  url "https://api.douglaslassance.me/v1/ramble/download/#{version}/aarch64-apple-darwin"
  name "Ramble"
  desc "Cross-post with ease"
  homepage "https://douglaslassance.me/ramble"

  livecheck do
    url "https://api.douglaslassance.me/v1/ramble"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: :ventura

  app "Ramble.app"

  zap trash: [
    "~/Library/Application Support/me.douglaslassance.ramble",
    "~/Library/Caches/me.douglaslassance.ramble",
    "~/Library/Preferences/me.douglaslassance.ramble.plist",
  ]
end
