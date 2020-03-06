require_relative 'lib/base-prob'

class Prob < BaseProB

  url "https://www3.hhu.de/stups/downloads/prob/tcltk/releases/1.9.3/ProB_1.9.3.mac_os.notarized.zip"
  version "1.9.3"
  sha256 "40fa8f522f188b9fb1cb0eed9035c46d3dbbe9de0818e20b3143315601038949"

  bottle :unneeded

  devel do
    # We use the current date to identify each nightly build
    version Time.now.strftime("%Y%m%d") + "-nightly"

    url "https://www3.hhu.de/stups/downloads/prob/tcltk/nightly/ProB.mac_os.x86_64.tar.gz"
  end
end
