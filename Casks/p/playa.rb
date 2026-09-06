cask "playa" do
  version "1.0.0"
  sha256 "aa45483ca08fa409b130d3f43fafcfa4ed9e7de2122780554f30c26180e06be9"

  url "https://api.douglaslassance.me/playa/download/#{version}/aarch64-apple-darwin"
  name "Playa"
  desc "Play your own music"
  homepage "https://douglaslassance.me/playa"

  livecheck do
    url "https://api.douglaslassance.me/playa"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: :tahoe

  app "Playa.app"

  zap trash: [
    "~/Library/Application Scripts/me.douglaslassance.playa",
    "~/Library/Containers/me.douglaslassance.playa",
  ]
end
