class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.8.1"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.8.1/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "801bb529a52062f178dd63922715e22221eaac20a2d1cafc12a91aaf4d582709"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.8.1/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a32ed6b951072b83f959944600fd1a65c1d4d8eefbe31e891c3e0154c49a58c9"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.8.1/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "e6a268e81ce11b6ac93e1eb8f4cfb55cf573f4e90a8e6f70487437eb133f771b"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.8.1/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "51fb7f1923a369c459cc4ae1592951dcfea918b1a6eebeed1e6ea5447a2f65ec"
    end
  end

  def install
    bin.install "review-engine"
  end

  test do
    system "#{bin}/review-engine", "--version"
  end
end
