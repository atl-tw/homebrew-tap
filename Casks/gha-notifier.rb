cask "gha-notifier" do
  version "1.0-SNAPSHOT"

  # Define URLs for different architectures
  if Hardware::CPU.arm?
    url "https://github.com/atl-tw/gha-notifier/releases/download/1.0.67/gha-notifier-ARM_64_1.0.67.dmg"
    sha256 "cfbaca8b943752dfa9a97aff1f3902f649cb5b94cbece55227bb70d44e3a1118"
  else
    url "https://github.com/atl-tw/gha-notifier/releases/download/1.0.67/gha-notifier-x86_64_1.0.67.dmg"
    sha256 :"cfbaca8b943752dfa9a97aff1f3902f649cb5b94cbece55227bb70d44e3a1118"
  end

  name "GitHub Actions Notifier""
  homepage "https://github.com/atl-tw/gha-notifier" # Replace with the application's homepage

  app "GitHub Actions Notifier.app"
  postflight do
    system_command "xattr",
                   args: ["-d", "com.apple.quarantine", "#{appdir}/GitHub Actions Notifier.app"],
                   sudo: true
  end

end