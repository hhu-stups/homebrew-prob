class Prob < Formula
  desc "The ProB Animator and Model Checker"
  homepage "https://www3.hhu.de/stups/prob/index.php/Main_Page"

  url "https://www3.hhu.de/stups/downloads/prob/tcltk/releases/1.8.0/ProB.mac_os.x86_64.tar.gz"
  version "1.8.0"
  sha256 "36e2554ad838b4398c7a39239891b6ebde3c4526adb56978a6c4fafaf4a0c216"

  bottle :unneeded

  conflicts_with "prob-nightly", :because => "Same thing, but older"

  depends_on :arch => :x86_64
  depends_on :macos => :yosemite

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/probcli.sh"]
    mv "#{bin}/probcli.sh", "#{bin}/probcli"

    bin.write_exec_script Dir["#{libexec}/StartProb.sh"]
    mv "#{bin}/StartProb.sh", "#{bin}/prob-tk"
  end

  def caveats; <<~EOS
    Depends on:
    Tcl/TK 8.5
    Java Runtime Environment or better Java JDK (7.0 or newer)
  EOS
  end

  test do
    system "probcli"
    system "prob-tk"
  end
end
