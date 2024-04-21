require "formula"

class Caser < Formula
  desc 'A command line tool for converting between common multiword token formats'
  homepage 'https://github.com/atl-tw/caser'
  url "https://github.com/atl-tw/caser/releases/download/1.0.70/caser-1.0.70-anyos.zip"
  sha256 "7443177422b4cead15a588230bdfb817e64363ce6a4def5f77633edef62cdaf1"
  version '1.0.70'

  # depends_on 'gnu-sed'

  def install
    bin.install 'bin/caser' => 'caser'
    prefix.install 'lib'
  end
end