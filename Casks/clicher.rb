cask "clicher" do
  version "1.0.2"
  sha256 "659fddfa8e1eff893bcf75f86b60dd6661e0656293b734d733f44c6d83d12889"

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
