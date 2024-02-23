require_relative 'lib/base-prob'

class Prob < BaseProB

  url "https://stups.hhu-hosting.de/downloads/prob/tcltk/releases/1.13.0/ProB.macos.zip"
  version "1.13.0"
  sha256 "1089c64d5a7365196a7c99eb037cbdc773c90c1d9ea8e7e2df171289701ea6c6"

  bottle :unneeded

  head do
    # We use the current date to identify each nightly build
    version Time.now.strftime("%Y%m%d") + "-nightly"

    url "https://stups.hhu-hosting.de/downloads/prob/tcltk/nightly/ProB.mac_os.zip"
  end
end
