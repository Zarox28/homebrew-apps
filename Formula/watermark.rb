class Watermark < Formula
  desc "Interactive CLI tool to add watermarks to images and PDF files"
  homepage "https://github.com/Zarox28/Watermark"
  version "0.0.7"
  license "AGPL-3.0-only"

  on_macos do
    on_intel do
      url "https://github.com/Zarox28/Watermark/releases/download/v0.0.7/watermark-darwin-amd64"
      sha256 "41efce9e0f47676364cdf7b19684ded401487ddc7db19887ac677c1b19f08ebe"
    end

    on_arm do
      url "https://github.com/Zarox28/Watermark/releases/download/v0.0.7/watermark-darwin-arm64"
      sha256 "b2fff29124b636289381915ee7d822164619e46c0a1fcd7c324cf83ee439b016"
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
