class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.34"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.34/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d37818e98d591115d6a5912962bf7ba598f257cbb6783dae0b7cd127a0fd8ab"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.34/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "12983fd07e4a2fbf7e83a63cdf91c7cd23fe6d7f2e15264cbc0b1b6c76352a9e"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.34/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "67341ae5731c2d3f1e0c1d2dd79350c40223e96e018ba39e4fc94bae8fbdc499"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.34/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "c40a1b96d27226d3731ca612acf3ec75c532fd9242917806781b35b6a6d1c7b2"
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
