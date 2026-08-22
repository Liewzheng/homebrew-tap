class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.30"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.30/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "998afef9bc4223559dfb2da3e5e2c77f1ec51340d25f3c0a587a01792980bcb4"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.30/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c40c14d3e8a8383e99a02f482dd24a60bda7132160b52e234f16d7e7c4dc0be"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.30/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "93c498de9301a2af47a3226de3b8d95f1b8812504b0a9ae3419d6b721e9b1360"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.30/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "7fc64f693fef44682893d3fea228a1cdbe724183905ff0cd284376d59a0b4c86"
    end
  end

  def install
    bin.install "review-engine"
    bin.install_symlink "review-engine" => "reng"
  end

  test do
    system "#{bin}/review-engine", "--version"
  end
end
