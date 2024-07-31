require "formula"

class gha-notifier < Formula
  desc 'A desktop notifier for GitHub actions that delegates to the gh command line.'
  homepage 'https://github.com/atl-tw/gha-notifier'
  url "https://github.com/atl-tw/gha-notifier/archive/refs/tags/1.0.62.zip"
  sha256 "c523801dd75994b90399b54aace83f906118a6dd5128a61b5128d880f7a2f873"
  version '1.0-SNAPSHOT'

  depends_on 'openjdk@17'

  def install
    jreRuntimePath = Formula["openjdk@17"].opt_prefix + "/libexec/openjdk.jdk/Contents/Home"
    system "./mvnw", "-Pmac-noarch" "package", "-DskipTests" "-DjreRuntimePath"+jreRuntimePath
    (prefix/"Applications").install "target/GitHub Actions Notifier.app"
  end
end