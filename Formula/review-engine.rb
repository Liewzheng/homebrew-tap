class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.5"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.5/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c869ce3c57be7ca59c349c88c2ae36c39a10ff02afd88578a8b7f0af3d918126"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.5/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4096b77879e6eccf691aae1f70b03b8f89361e9ab57a8c0a5e2ea9e88fec46e9"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.5/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "c06669c80e944b2dc34f7b16326005615e69ec75106d19256b0f95779f58ecc4"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.5/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "84c098feaac49222f4e072032db42b3659d7403a34c4f4b6f63f3780fa9589b4"
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
