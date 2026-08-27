require_relative 'lib/base-prob'

class Prob < BaseProB

  url "https://stups.hhu-hosting.de/downloads/prob/tcltk/releases/1.16.1/ProB.macos.zip"
  version "1.16.1"
  sha256 "93cb8e8581ac15b327800d423c6588b134b589e87ea34abc51d6d00a7b8cedc3"

  head do
    # We use the current date to identify each nightly build
    version Time.now.strftime("%Y%m%d") + "-nightly"

    url "https://stups.hhu-hosting.de/downloads/prob/tcltk/nightly/ProB.mac_os.zip"
  end
end
