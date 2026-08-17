class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.17"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.17/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c576971c8d4ca5f2dd89440213cc173bd2285489a468b16d5a6c3cd45f85278"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.17/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "88870154fd6f30635b05f48e8f3ec64a7dcad6cf61607cc75617a6095a750234"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.17/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "52fe22e0f531c0b2545712652deb8f4ad58f08986b7cf687e58bb6be2ac4cd6a"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.17/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "989f68c548cbbe16619ba87a09eba3be248f645d499318dcdcb2a3f0990fac26"
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
