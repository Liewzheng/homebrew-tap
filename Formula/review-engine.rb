class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.43"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.43/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d701c644ba96ff83576b03ccf6e0882457f9ce1eb6e375b8488629a301fbcfe8"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.43/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "344ae0baa14b0f809a6ae91f43606d7fbce36c7a40746ba1a65114aa18b5e097"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.43/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "6bbb9d3aa4a2f794c8249e6576b72d01eac4d08b4329675fafc002e9fa03f66b"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.43/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "77a607dcfa1c8c7d715e10ea8d42fb0b02a301211bc4ae6b9927a35f5b2c5c0b"
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
