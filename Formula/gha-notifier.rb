require "formula"

class  < Formula
  desc 'A desktop notifier for GitHub actions that delegates to the gh command line.'
  homepage 'https://github.com/atl-tw/gha-notifier'
  url "https://github.com/atl-tw/gha-notifier/archive/refs/tags/1.0.61.zip"
  sha256 "9067ab8823fd22d8e816507458cc0572581d060235fcf4b623af007fc139ac3f"
  version '1.0-SNAPSHOT'

  depends_on 'openjdk@17'

  def install
    jreRuntimePath = Formula["openjdk@17"].opt_prefix + "/libexec/openjdk.jdk/Contents/Home"
    system "./mvnw", "-Pmac-noarch" "package", "-DskipTests" "-DjreRuntimePath"+jreRuntimePath
    (prefix/"Applications").install "target/GitHub Actions Notifier.app"
  end
end