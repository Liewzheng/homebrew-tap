class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.30"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.30/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d491de3756b6c8a72106ec9e6c7bcdbc8120c38179c9bcbfe365875b6a19bc7"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.30/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e831e1653586dab73b5f6ed8e28f9381bc41137fa16d63c73524b1a8ead29eea"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.30/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "bdc8bc55e787ebc3c31c53f5b32c1fec3f7f52c7b7ef1ceaba7708049ac75c24"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.30/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "30b6eef9f45da0b4d29aad11ed60e0e126044ba4a4755f9a3f4e16409056bf8c"
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
