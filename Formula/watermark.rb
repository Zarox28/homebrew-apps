class Watermark < Formula
  desc "Interactive CLI tool to add watermarks to images and PDF files"
  homepage "https://github.com/Zarox28/Watermark"
  version "0.0.4"
  license "AGPL-3.0-only"

  on_macos do
    on_intel do
      url "https://github.com/Zarox28/Watermark/releases/download/v0.0.4/watermark-darwin-amd64"
      sha256 "d1d235cbc47df679669b73d86c3ab757bdb0ae880fa44b62b04f698d6ed438b7"
    end

    on_arm do
      url "https://github.com/Zarox28/Watermark/releases/download/v0.0.4/watermark-darwin-arm64"
      sha256 "7b9b6822d217597e76c5e5f91ce00419df14cb68a45157660da4f769cb349f4b"
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
