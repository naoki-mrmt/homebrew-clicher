cask "clicher" do
  version "0.2.4"
  sha256 "6c0d9eb7fccacb9bb35d1bd4cbb3e673ccbf37a935241bbc0804e76131b8b04b"

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
