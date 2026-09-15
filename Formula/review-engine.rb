class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.25"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.25/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a99f55b532ec77649d89dcf6ed37a91c67d448cd0cd09570c298416a28cceae9"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.25/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9f1bac5e410b1ba3ac4fed44be8f68a88e073fa9718cf13730d6648ec5364063"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.25/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "63e672181a5c7c2dc0e6a9f21c19d8950e72083bb3732ada63a77c3693c8b66e"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.25/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "c12ae00f8d44f35fde0ad834e5435e25de154bc14a3493aa1f9737f06db0bb1f"
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
