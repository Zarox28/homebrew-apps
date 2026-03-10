class Watermark < Formula
  desc "Interactive CLI tool to add watermarks to images and PDF files"
  homepage "https://github.com/Zarox28/Watermark"
  version "0.0.8"
  license "AGPL-3.0-only"

  on_macos do
    on_intel do
      url "https://github.com/Zarox28/Watermark/releases/download/v0.0.8/watermark-darwin-amd64"
      sha256 "c589ebbdd955394e29f50e0466be6fe7ad259ae455ebc0f186affdb30443ae49"
    end

    on_arm do
      url "https://github.com/Zarox28/Watermark/releases/download/v0.0.8/watermark-darwin-arm64"
      sha256 "3ab91da5e2b48b2a3b7b5fcffa32342f58b86909ed8790d501e07981f5c3c0d4"
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
