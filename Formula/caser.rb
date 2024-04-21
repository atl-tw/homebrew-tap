require "formula"

class Caser < Formula
  desc 'A command line tool for converting between common multiword token formats'
  homepage 'https://github.com/atl-tw/caser'
  url "https://github.com/atl-tw/caser/releases/download/1.0.71/caser-1.0.71-anyos.zip"
  sha256 "0e1085232bea6f9a885d7d95dabd0d4a125367f81823442c55b07e0ea715479b"
  version '1.0.71'

  depends_on 'openjdk'

  def install
    bin.install 'bin/caser' => 'caser'
    prefix.install 'lib'
  end
end