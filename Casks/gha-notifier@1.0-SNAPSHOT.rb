cask "gha-notifier" do
  version "1.0-SNAPSHOT"

  # Define URLs for different architectures
  if Hardware::CPU.arm?
    url "https://github.com/atl-tw/gha-notifier/releases/download/1.0.68/gha-notifier-ARM_64_1.0.68.dmg"
    sha256 "bcf7b32d05ddda90ac9a1944bf6690ae9cf6b6c608b9bbebacf66af05c050a4f"
  else
    url "https://github.com/atl-tw/gha-notifier/releases/download/1.0.68/gha-notifier-x86_64_1.0.68.dmg"
    sha256 "ceddbfcc2ab2a5df0bd48c91d33c941212a2f0a503effa7cba380d8d47c6da7d"
  end

  name "GitHub Actions Notifier"
  homepage "https://github.com/atl-tw/gha-notifier" # Replace with the application's homepage

  app "GitHub Actions Notifier.app"
  postflight do
    system_command "xattr",
                   args: ["-d", "com.apple.quarantine", "#{appdir}/GitHub Actions Notifier.app"],
                   sudo: true
  end

end