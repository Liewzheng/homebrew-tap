class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.6"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.6/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "60e7f8a3ec9bc85b36b995d0eefbfdfce55734fcb1f1d7d6cc5495ce6137e6bd"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.6/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a44bc95d1b29de09e3f59fa2ddf60438d80a60b8be87e5c0a22001494c4bb0c9"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.6/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "76992bc0b04716acfcdbbb9dc4bd61559f5943ad6a54c7721d8314b75ed43c65"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.6/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "a95b28ee4f2392930757c03c42d0310c51731959517abd7b11414d16c0413e5e"
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
