require "formula"

class GhaNotifier < Formula
  desc 'A desktop notifier for GitHub actions that delegates to the gh command line.'
  homepage 'https://github.com/atl-tw/gha-notifier'
  url "https://github.com/atl-tw/gha-notifier/archive/refs/tags/1.0.63.zip"
  sha256 "af47e6315b5504c2dde0a135cc8c75d1367a86a87e44f0e39fe805225b279847"
  version '1.0-SNAPSHOT'

  depends_on 'openjdk@17'

  def install
    jreRuntimePath = Formula["openjdk@17"].opt_prefix + "/libexec/openjdk.jdk/Contents/Home"
    system "./mvnw", "-Pmac-noarch" "package", "-DskipTests" "-DjreRuntimePath"+jreRuntimePath
    (prefix/"Applications").install "target/GitHub Actions Notifier.app"
  end
end