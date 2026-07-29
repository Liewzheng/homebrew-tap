class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.7.12"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.12/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6216729f0523b7cb2d09edb22731173cd93be530aae970653203f5753ac29042"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.12/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db6aecd592138a52edabe321825ec786b834f2a1931629581d28d304756dd7db"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.12/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "af967d52ebaa227b79fb7afdc21dfc0cd9d11ca6b0eb9f3bea030afc1dc50375"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.12/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "65e17e4cb432147a396505877a00adf1a22827ebe4a588d27dfd70c6fbfbe64c"
    end
  end

  def install
    bin.install "review-engine"
  end

  test do
    system "#{bin}/review-engine", "--version"
  end
end
