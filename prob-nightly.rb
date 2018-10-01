require_relative 'lib/base-prob'

class ProbNightly < BaseProB
  url "https://www3.hhu.de/stups/downloads/prob/tcltk/nightly/ProB.mac_os.x86_64.tar.gz"
  #
  # We use the current date to identify each nightly build
  version Time.now.strftime("%Y%m%d")

  conflicts_with "prob", :because => "Please uninstall the release version of ProB before continuing."

  depends_on :arch => :x86_64
  depends_on :macos => :yosemite
end
