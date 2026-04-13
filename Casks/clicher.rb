cask "clicher" do
  version "1.0.3"
  sha256 "8030c509f77135eacc77aceed792363014d873b8d4286446b64d8334f6d70375"

  url "https://github.com/naoki-mrmt/Clicher/releases/download/v#{version}/Clicher-#{version}.dmg"
  name "Clicher"
  desc "Screenshot and annotation tool for macOS"
  homepage "https://github.com/naoki-mrmt/Clicher"

  depends_on macos: ">= :sonoma"

  app "Clicher.app"

  zap trash: [
    "~/Library/Application Support/Clicher",
    "~/Library/Preferences/com.naoki-mrmt.Clicher.plist",
    "~/Library/Caches/com.naoki-mrmt.Clicher",
  ]
end
