require_relative 'lib/base-prob'

class Prob < BaseProB

  url "https://stups.hhu-hosting.de/downloads/prob/tcltk/releases/1.15.1/ProB.macos.zip"
  version "1.15.1"
  sha256 "6e85c88eee56ec7f18f4b1737693b1dc4bfbf4f9081c42def8c09afff48f24c2"

  bottle :unneeded

  head do
    # We use the current date to identify each nightly build
    version Time.now.strftime("%Y%m%d") + "-nightly"

    url "https://stups.hhu-hosting.de/downloads/prob/tcltk/nightly/ProB.mac_os.zip"
  end
end
