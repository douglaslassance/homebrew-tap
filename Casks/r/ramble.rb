cask "ramble" do
  version "1.1.1"
  sha256 "8285a12f9c4dd281a667f41adad9261519add2e82eabacf9b9080bd4edb630ab"

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
