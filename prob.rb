require_relative 'lib/base-prob'

class Prob < BaseProB

  url "https://www3.hhu.de/stups/downloads/prob/tcltk/releases/1.10.2/ProB_mac_os.x86_64.notarized.zip"
  version "1.10.2"
  sha256 "4d0b40698e0f423bfb150b4489bc509154a5e4a1b0fadafe7136d646d3f23e30"

  bottle :unneeded

  head do
    # We use the current date to identify each nightly build
    version Time.now.strftime("%Y%m%d") + "-nightly"

    url "https://www3.hhu.de/stups/downloads/prob/tcltk/nightly/ProB.mac_os.x86_64.tar.gz"
  end
end
