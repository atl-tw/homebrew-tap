cask "gha-notifier" do
  version "1.0.71"
  name "GitHub Actions Notifier"
  homepage "https://github.com/atl-tw/gha-notifier"
  app "GitHub Actions Notifier.app"

  if Hardware::CPU.arm?
    url "https://github.com/atl-tw/gha-notifier/releases/download/1.0.71/gha-notifier-ARM_64_1.0.71.dmg"
    sha256 "5e83575de289f806839ad894c5522a8e72261f0c8449d55fc7d90f0100a02f52"
  else
    url "https://github.com/atl-tw/gha-notifier/releases/download/1.0.71/gha-notifier-x86_64_1.0.71.dmg"
    sha256 "e0922e401f094eb94be1efe47bf954e75150101b92e52b451acc1c0e43669043"
  end

  postflight do
    system_command "xattr",
                   args: ["-d", "com.apple.quarantine", "#{appdir}/GitHub Actions Notifier.app"],
                   sudo: true
  end

end