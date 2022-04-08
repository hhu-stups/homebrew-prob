require_relative 'lib/base-prob'

class Prob < BaseProB

  url "https://www3.hhu.de/stups/downloads/prob/tcltk/releases/1.11.1/ProB_mac_os.x86_64.notarized.zip"
  version "1.11.1"
  sha256 "22180c48682cabaa6714f6ee4055e1892d14ba9a69e02482f13bc3256a6bfe25"

  head do
    # We use the current date to identify each nightly build
    version Time.now.strftime("%Y%m%d") + "-nightly"

    url "https://www3.hhu.de/stups/downloads/prob/tcltk/nightly/ProB.mac_os.x86_64.tar.gz"
  end
end
