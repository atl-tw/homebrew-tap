cask "gha-notifier" do
  version "1.0.70"

  # Define URLs for different architectures
  if Hardware::CPU.arm?
    url "https://github.com/atl-tw/gha-notifier/releases/download/1.0.70/gha-notifier-ARM_64_1.0.70.dmg"
    sha256 "b9ef650d1ff141f2110a678f31a89c641a68381d650b8630b02f02a290192834"
  else
    url "https://github.com/atl-tw/gha-notifier/releases/download/1.0.70/gha-notifier-x86_64_1.0.70.dmg"
    sha256 "edf5a6eb4430fc6c8e868a7f8caebe3687f3ad06d9a76d57b925ae1f9bfdf290"
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