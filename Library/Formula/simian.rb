require 'formula'

class Simian < Formula
  url 'http://www.harukizaemon.com/simian/simian-2.4.0.tar.gz'
  homepage 'http://www.harukizaemon.com/simian/index.html'
  md5 'cbe85953e518a376d2a3fe1f47d908c3'

  def install
    libexec.install "bin/simian-2.4.0.jar"
    (bin+'simian').write <<-EOS.undent
      #!/bin/sh
      java -jar "#{libexec}/simian-2.4.0.jar" $@
    EOS
  end
end
