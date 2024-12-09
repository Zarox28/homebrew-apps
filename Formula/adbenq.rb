class Adbenq < Formula
  desc "Control your BenQ TV like a boss 🖥️✨"
  homepage "https://github.com/Zarox28/ADBenQ"
  url "https://github.com/Zarox28/ADBenQ/releases/download/v0.1.9/ADBenQ_macos.tar.gz"
  sha256 "074682504602dfbe5e05ebffcdd3654c5049f4748318230b3f6071e141207d1d"
  license "AGPL-3.0"

  depends_on "scrcpy"
  depends_on "python3"

  def install
    system "brew", "install", "--cask", "android-platform-tools" unless which("adb")

    bin.install "adbenq"
  end
end