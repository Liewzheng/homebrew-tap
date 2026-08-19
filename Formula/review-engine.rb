class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.25"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.25/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "710ce05b7eac3c2b31a66f977c0790dfc8dcba1b448a75cf4d451ea7468b39fd"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.25/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "318f90a8c96920a050a3ce73ad385b7959ca34f9ab72011c17eaf012e9d29b16"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.25/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "6bf2ce1f1c8ad2b9e6d4fa925b76ffb54d7d8df833a8aff3ac78f44d51420d6e"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.25/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "34f496886da2a9725f33f55a65bbd9adaa784168630f3fb5decf51e1ec4f1522"
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
