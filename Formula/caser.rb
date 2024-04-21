require "formula"

class caser < Formula
  desc 'A command line tool for converting between common multiword token formats'
  homepage 'https://github.com/atl-tw'
  url "https://github.com/atl-tw/caser/releases/download/1.0.66/caser-1.0.66-anyos.zip"
  sha256 "https://github.com/atl-tw/caser/releases/download/1.0.66/caser-1.0.66-anyos.zip"
  version '1.0.66'

  # depends_on 'gnu-sed'

  def install
    bin.install 'bin/caser' => 'caser'
    lib.install 'lib/*'
  end
end