require_relative 'lib/base-prob'

class Prob < BaseProB

  url "https://www3.hhu.de/stups/downloads/prob/tcltk/releases/1.10.2/ProB_mac_os.x86_64.notarized.zip"
  version "1.10.2"
  sha256 "4041e78abcc392b2583f2d674520ac14ecf8513aadd4a696c71eb3b8b9887508"

  head do
    # We use the current date to identify each nightly build
    version Time.now.strftime("%Y%m%d") + "-nightly"

    url "https://www3.hhu.de/stups/downloads/prob/tcltk/nightly/ProB.mac_os.x86_64.tar.gz"
  end
end
