class BaseProB < Formula
  desc "The ProB Animator and Model Checker"
  homepage "https://www3.hhu.de/stups/prob/index.php/Main_Page"

  depends_on :macos >= :catalina

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/probcli.sh"]
    mv "#{bin}/probcli.sh", "#{bin}/probcli"

    bin.write_exec_script Dir["#{libexec}/StartProb.sh"]
    mv "#{bin}/StartProb.sh", "#{bin}/prob-tk"
  end

  def caveats;

    msg = <<~EOS
      Depends on:
      Tcl/TK 8.5/8.6
      Java Runtime Environment or better Java JDK (7.0 or newer)
    EOS

    cmd = "#{bin}/probcli -check_java_version"
    msg += `#{cmd}`
  end

  test do
    system "probcli"
    system "prob-tk"
  end
end
