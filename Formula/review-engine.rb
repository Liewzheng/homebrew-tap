class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.19"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.19/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c155d6347ca61e8af633c5150bd80f734ee3b507c8dd5c0e92dfffc7d97384b2"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.19/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc39112ad1d76eef0ec2498b79caef06f754ccdcc4b1c40afe7165e1b79c3c42"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.19/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "7ff26f16438bd959d3bec59f03b2e32fdb55955ca9fc0c5488f614a44b45b3f1"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.19/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "75d78735b687fbe0278b59086b7a0c421234bb8ad4c9747f24cf36c1026886f2"
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
