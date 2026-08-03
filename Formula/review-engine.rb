class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.8.0"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.8.0/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec44721d6e0e52ec2d0c28f3454110c06578ef2b4154401109c3a92c93c7a725"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.8.0/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "950db1c76c0dc77b0cc6ec1adb246f5e891fe164a78620a50389768a15564b6f"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.8.0/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "fd4e34afdf145dc3e47ead434a6386c986101ecb2130441c4e0c6c88265c29d5"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.8.0/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "e5ab3b605824b86b1e1e3268063f589384f8b2235a42a51432f8f753966b91e3"
    end
  end

  def install
    bin.install "review-engine"
  end

  test do
    system "#{bin}/review-engine", "--version"
  end
end
