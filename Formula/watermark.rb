class Watermark < Formula
  desc "Interactive CLI tool to add watermarks to images and PDF files"
  homepage "https://github.com/Zarox28/Watermark"
  version "0.0.5"
  license "AGPL-3.0-only"

  on_macos do
    on_intel do
      url "https://github.com/Zarox28/Watermark/releases/download/v0.0.5/watermark-darwin-amd64"
      sha256 "879da49261fbe04ba1e0b0cd734f647a22fc661e2d3d3d4d8dddfea210da16fd"
    end

    on_arm do
      url "https://github.com/Zarox28/Watermark/releases/download/v0.0.5/watermark-darwin-arm64"
      sha256 "aa251f4402b6c61c6b5750f543381065d466c7d7ab083c7f2a6f9c3a2b0a7933"
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
