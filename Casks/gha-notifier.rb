cask "gha-notifier" do
  version "1.0-SNAPSHOT"

  # Define URLs for different architectures
  if Hardware::CPU.arm?
    url "https://github.com/atl-tw/gha-notifier/releases/download/1.0.69/gha-notifier-ARM_64_1.0.69.dmg"
    sha256 "52f90ea86ac29773e394b9c6d60c3fa6837edf04bf9c077dfdae3c1303300bb9"
  else
    url "https://github.com/atl-tw/gha-notifier/releases/download/1.0.69/gha-notifier-x86_64_1.0.69.dmg"
    sha256 "a94a8c3a7b1f8b44e94b0eef6b77dea9b83caaab59f50c45a06880277b9fb7f6"
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