class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.7.11"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.11/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eea2eee358d4adf99d9afb09b4e1271c4e073f38b8629b82af89be9bc7c38e50"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.11/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "950eeb997dbb7761cd9883fa064250dbbad252870a38399dea249c23029ccc43"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.11/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "03af756d2fe0b05c784e534ce64e55f72553857e7bea04c2a114ada5243efb7b"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.11/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "2601c52c95ed5a93a817f0b6cc0ac69341f1d9ba899d2ad4fd95aa31d8682bb4"
    end
  end

  def install
    bin.install "review-engine"
  end

  test do
    system "#{bin}/review-engine", "--version"
  end
end
