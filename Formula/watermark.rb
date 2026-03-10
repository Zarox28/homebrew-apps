class Watermark < Formula
  desc "Interactive CLI tool to add watermarks to images and PDF files"
  homepage "https://github.com/Zarox28/Watermark"
  version "0.0.9"
  license "AGPL-3.0-only"

  on_macos do
    on_intel do
      url "https://github.com/Zarox28/Watermark/releases/download/v0.0.9/watermark-darwin-amd64"
      sha256 "846e3630c9eb27bf08f8475daae64fe886f831560b7166988f9cfa5731edc2dc"
    end

    on_arm do
      url "https://github.com/Zarox28/Watermark/releases/download/v0.0.9/watermark-darwin-arm64"
      sha256 "add8fc0b125a5389c12df2b20d2bff000455c13326d5f5fa8905ccb51f652bfb"
    end
  end

  def install
    binary = Hardware::CPU.intel? ? "watermark-darwin-amd64" : "watermark-darwin-arm64"
    bin.install binary => "watermark"
  end

  test do
    system "#{bin}/watermark", "--help"
  end
end
