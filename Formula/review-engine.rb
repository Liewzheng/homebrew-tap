class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.4"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.4/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6980ea94e959712753556d4412dbfdf44d6857032a4b6211f08daf7963bf272d"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.4/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a9c8c192addf6863f29c9bdc2263f762df57007c49e7c2b2e6a7f8265f77deac"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.4/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "e88940a26f0add18135721b10f9b8feb295ad125c3f2e4e5ba8be63c8f7f02ff"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.4/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "ed0a287ddce5b5224e5541331e8233d4ce6053435a60cd26c3be1dd02516cb7a"
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
