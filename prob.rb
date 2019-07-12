require_relative 'lib/base-prob'

class Prob < BaseProB

  url "https://www3.hhu.de/stups/downloads/prob/tcltk/releases/1.9.0/ProB.mac_os.x86_64.tar.gz"
  version "1.9.0"
  sha256 "139a99ee748f6dc0acdd4297a794675298b2d3ae308cd67532c06c1d42390524"

  bottle :unneeded

  devel do
    # We use the current date to identify each nightly build
    version Time.now.strftime("%Y%m%d") + "-nightly"

    url "https://www3.hhu.de/stups/downloads/prob/tcltk/nightly/ProB.mac_os.x86_64.tar.gz"
  end
end
