require 'formula'

class Construct < Formula
  head 'git://github.com/josephwecker/construct.git'
  homepage 'https://github.com/josephwecker/construct'

  def install
    bin.mkdir
    bin.install ['bin/construct']
    lib.mkdir
    lib.install Dir['lib']
  end

  def caveats; <<-EOS.undent
    After installation, set $CONSTRUCT_ADDONS in your profile:
      export CONSTRUCT_ADDONS=#{lib}
    EOS
  end
  
end

