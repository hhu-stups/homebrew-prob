require_relative 'lib/base-prob'

class Prob < BaseProB

  url "https://www3.hhu.de/stups/downloads/prob/tcltk/releases/1.9.3/ProB.mac_os.x86_64.tar.gz"
  version "1.9.3"
  sha256 "88ac328137929f8b9abfb45a07ebb89a5a1b9b3639a0c87ded83d5025d5cc27f"

  bottle :unneeded

  head do
    # We use the current date to identify each nightly build
    version Time.now.strftime("%Y%m%d") + "-nightly"

    url "https://www3.hhu.de/stups/downloads/prob/tcltk/nightly/ProB.mac_os.x86_64.tar.gz"
  end
end
