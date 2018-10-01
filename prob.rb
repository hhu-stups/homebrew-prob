require_relative 'base-prob'
class Prob < BaseProB

  url "https://www3.hhu.de/stups/downloads/prob/tcltk/releases/1.8.2/ProB.mac_os.x86_64.tar.gz"
  version "1.8.2"
  sha256 "5a93c02c8004ef5f38e219173524bd4da8a58dddd49493c3588b40d406ff2ca3"

  bottle :unneeded

  conflicts_with "prob-nightly", :because => "Same thing, but older"
end
