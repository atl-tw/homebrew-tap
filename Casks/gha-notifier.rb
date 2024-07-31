cask "gha-notifier" do
  version "1.0-SNAPSHOT"

  # Define URLs for different architectures
  if Hardware::CPU.arm?
    url "https://github.com/atl-tw/gha-notifier/releases/download/1.0.65/gha-notifier-ARM_64_1.0.65.dmg"
    sha256 "8b9c8be5138aa089bba39bf6874af1f513a2b7f2645fcbee9b55ddfe2d8b174e"
  else
    url "https://github.com/atl-tw/gha-notifier/releases/download/1.0.65/gha-notifier-ARM_64_1.0.65.dmg"
    sha256 :"8b9c8be5138aa089bba39bf6874af1f513a2b7f2645fcbee9b55ddfe2d8b174e"
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
