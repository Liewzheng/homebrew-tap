class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.9"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.9/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b61269050af43838bf5a79db61f8919c969c3d577be8b7a63bdbe0ce0b16cca3"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.9/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed8c26ebb87cef6c6b2cada5096e5a0fda4b775a9996700a963dd3ccc22bf059"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.9/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "af9e0ea7c799009b7cff19d11c40cba2e03a047241622fdedda619b0816fee76"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.9/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "9747da9d80ed2659af8a791ccdbe8d0412b021ae1bdc51f2b5250596706f5b06"
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
