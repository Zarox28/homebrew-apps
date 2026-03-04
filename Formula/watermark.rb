class Watermark < Formula
  desc "Interactive CLI tool to add watermarks to images and PDF files"
  homepage "https://github.com/Zarox28/Watermark"
  version ""
  license "AGPL-3.0-only"

  on_macos do
    on_intel do
      url "https://github.com/Zarox28/Watermark/releases/download//watermark-darwin-amd64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end

    on_arm do
      url "https://github.com/Zarox28/Watermark/releases/download//watermark-darwin-arm64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
