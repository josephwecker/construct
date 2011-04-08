require 'formula'

class Construct < Formula
  head 'git://github.com/josephwecker/construct.git'
  homepage 'https://github.com/josephwecker/construct'

  def install
    bin.mkdir
    bin.install ['bin/construct']
    lib.mkdir
    lib.install Dir['construct-addons']
  end
end

