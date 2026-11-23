cask "purrloader" do
  version "1.0"
  sha256 "2e3b9704af7deacdfe6eb0df65b66c0832b9794bf88ce94e3cc30373502d2555"

  url "https://github.com/BLCNYY/Purrloader/releases/download/v#{version}/Purrloader.dmg"
  name "Purrloader"
  desc "Video downloader built on yt-dlp"
  homepage "https://github.com/BLCNYY/Purrloader"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Purrloader.app"

  zap trash: [
    "~/Library/Application Support/Purrloader",
    "~/Library/Preferences/com.blcnyy.purrloader.plist",
    "~/Library/Saved Application State/com.blcnyy.purrloader.savedState",
  ]
end
