require "formula"

class Caser < Formula
  desc 'A command line tool for converting between common multiword token formats'
  homepage 'https://github.com/atl-tw'
  url "https://github.com/atl-tw/caser/releases/download/1.0.68/caser-1.0.68-anyos.zip"
  sha256 "d07c59ea047a8a3c5b6dbdb5f8c61e3f7dabe7dd090970cd2c507c4da72a66ed"
  version '1.0.68'

  # depends_on 'gnu-sed'

  def install
    bin.install 'bin/caser' => 'caser'
    prefix.install 'lib'
  end
end