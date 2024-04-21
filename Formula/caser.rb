require "formula"

class Caser < Formula
  desc 'A command line tool for converting between common multiword token formats'
  homepage 'https://github.com/atl-tw'
  url "https://github.com/atl-tw/caser/releases/download/1.0.67/caser-1.0.67-anyos.zip"
  sha256 "4f677261cb6085dc335fcd66e199e5fd48507ec7cadd1a74b30888918868f8da"
  version '1.0.67'

  # depends_on 'gnu-sed'

  def install
    bin.install 'bin/caser' => 'caser'
    lib.install 'lib/*'
  end
end