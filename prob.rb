require_relative 'lib/base-prob'

class Prob < BaseProB

  url "https://www3.hhu.de/stups/downloads/prob/tcltk/releases/1.9.3/ProB.mac_os.x86_64.tar.gz"
  version "1.9.0"
  sha256 "525af6b977bd09ff84909898d3dabc34bd9d19598defbcaa5270a21dec94504e"

  bottle :unneeded

  devel do
    # We use the current date to identify each nightly build
    version Time.now.strftime("%Y%m%d") + "-nightly"

    url "https://www3.hhu.de/stups/downloads/prob/tcltk/nightly/ProB.mac_os.x86_64.tar.gz"
  end
end
