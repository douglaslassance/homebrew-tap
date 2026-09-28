cask "gifted" do
  version "0.4.0"
  sha256 "d01470f39aff1a8a2f4e122f54be6343260af9db2e105033176dd89ba8d30e99"

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
