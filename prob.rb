require_relative 'base-prob'
class Prob < BaseProB

  url "https://www3.hhu.de/stups/downloads/prob/tcltk/releases/1.8.0/ProB.mac_os.x86_64.tar.gz"
  version "1.8.0"
  sha256 "36e2554ad838b4398c7a39239891b6ebde3c4526adb56978a6c4fafaf4a0c216"

  bottle :unneeded

  conflicts_with "prob-nightly", :because => "Same thing, but older"
end
