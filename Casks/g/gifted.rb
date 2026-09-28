cask "gifted" do
  version "0.4.1"
  sha256 "afc25cbc0e1eb61ade5bfbee3010c74c755b6333aa1c03f0846e74d837522bfc"

  url "https://api.douglaslassance.me/v1/gifted/download/#{version}/aarch64-apple-darwin"
  name "Gifted"
  desc "GIF-based infinite music videos reacting to live audio"
  homepage "https://douglaslassance.me/gifted"

  livecheck do
    url "https://api.douglaslassance.me/v1/gifted"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: :ventura

  app "Gifted.app"

  zap trash: [
    "~/Library/Application Support/me.douglaslassance.gifted",
    "~/Library/Caches/me.douglaslassance.gifted",
    "~/Library/Preferences/me.douglaslassance.gifted.plist",
  ]
end
