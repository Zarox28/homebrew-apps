class Adbenq < Formula
  desc "Control your BenQ TV like a boss 🖥️✨"
  homepage "https://github.com/Zarox28/ADBenQ"
  url "https://github.com/Zarox28/ADBenQ/releases/download/v0.1.9/ADBenQ_macos.tar.gz"
  sha256 "4b6ba86e20977f6c1c5bd718dd4b2851248f0c342b295dcdcb267aa46ab2795c"
  license "AGPL-3.0"

  depends_on "scrcpy"
  depends_on "python3"

  def caveats
    <<~EOS
      You need to have adb installed on your system.
      You can install it via Homebrew:
        brew install --cask android-platform-tools
    EOS
  end

  def install
    bin.install "adbenq"
  end
end