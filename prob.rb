require_relative 'lib/base-prob'

class Prob < BaseProB

  url "https://stups.hhu-hosting.de/downloads/prob/tcltk/releases/1.15.0/ProB.macos.zip"
  version "1.15.0"
  sha256 "f67ae309ab91bf169e40ad9c231d32ce902fd7729a3eaa0786d0e5467a70a5fa"

  bottle :unneeded

  head do
    # We use the current date to identify each nightly build
    version Time.now.strftime("%Y%m%d") + "-nightly"

    url "https://stups.hhu-hosting.de/downloads/prob/tcltk/nightly/ProB.mac_os.zip"
  end
end
