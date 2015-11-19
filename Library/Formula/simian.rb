require 'formula'

class Simian < Formula
  url 'http://www.harukizaemon.com/simian/simian-2.4.0.tar.gz'
  homepage 'http://www.harukizaemon.com/simian/index.html'

  def install
    libexec.install "bin/simian-2.4.0.jar"
    (bin+'simian').write <<-EOS.undent
      #!/bin/sh
      java -jar "#{libexec}/simian-2.4.0.jar" $@
    EOS
  end
end
