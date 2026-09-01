class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.47"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.47/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06b6ef266a8fae8c0877e4019244e4c35cc350bdc39eb6c452e796119734a0c8"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.47/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0f7e04a479e5ff21c7fc8860dca4c70e7e5e08053d518a36b3261c216baf7abf"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.47/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "5261ec5bdb1b865d02c49386206549469dcd657961f99c1ca20ae0e86bc843ad"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.47/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "0c87cc7b052dd3a7eb08b3849e357897ccca7f9cd4de2329dd38508eec71f6ce"
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
