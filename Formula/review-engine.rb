class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.7.6"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.6/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23718175791ee0c13bea926bfa376c7ee29d42c19e6a8e488d97a1ab89ec4ae5"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.6/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a0d1eb45f0db9b2ce5617381b0d598975fdcc868bd610683a1314a151cb25e85"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.6/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "18751cda04e5e9224f6cb34bfedaf6917463f0fb8289e6779f1f54478140a864"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.6/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "3205a188b8c3587cd05b38f9b70142566ef2a16267d3e11f940eb3cff91fa8d6"
    end
  end

  def install
    bin.install "review-engine"
  end

  test do
    system "#{bin}/review-engine", "--version"
  end
end
