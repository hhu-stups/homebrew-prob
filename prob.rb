require_relative 'lib/base-prob'

class Prob < BaseProB

  url "https://stups.hhu-hosting.de/downloads/prob/tcltk/releases/1.16.0/ProB.macos.zip"
  version "1.16.0"
  sha256 "88e45bfb59f312d15d2ed6e79881c10023bd59682fa582cdaed432ecb0bfa684"

  head do
    # We use the current date to identify each nightly build
    version Time.now.strftime("%Y%m%d") + "-nightly"

    url "https://stups.hhu-hosting.de/downloads/prob/tcltk/nightly/ProB.mac_os.zip"
  end
end
