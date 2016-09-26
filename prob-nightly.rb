class ProbNightly < Formula
  desc "The ProB Animator and Model Checker - Nightly Build"
  homepage "https://www3.hhu.de/stups/prob/index.php/Main_Page"

  url "https://www3.hhu.de/stups/downloads/prob/tcltk/nightly/ProB.mac_os.x86_64.tar.gz"
  #
  # We use the current date to identify each nightly build
  version Time.now.strftime("%Y%m%d")

  bottle :unneeded

  conflicts_with "prob", :because => "Please uninstall the release version of ProB before continuing."

  depends_on :arch => :x86_64
  depends_on :macos => :yosemite

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/probcli.sh"]
    bin.install "#{bin}/probcli.sh" => "probcli"

    bin.write_exec_script Dir["#{libexec}/StartProb.sh"]
    bin.install "#{bin}/StartProb.sh" => "prob-tk"
  end

  def caveats;
    cmd = "#{bin}/probcli -check_java_version"
    msg = <<-EOS.undent
      Depends on:
      Tcl/TK 8.5
      Java Runtime Environment or better Java JDK (7.0 or newer)
    EOS
    msg += `#{cmd}`
  end

  test do
    system "probcli"
    system "prob-tk"
  end
end
