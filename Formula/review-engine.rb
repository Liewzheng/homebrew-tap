class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.27"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.27/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64402f1a898267ccf14e073f4f9e9507cb41f3ac14a907a911c03f245e3b239e"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.27/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aed994f61c309e60d20c230b588510c9369e42a7cd65076192c61933602893ff"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.27/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "37178b999262812bc61ce5a38878da6cf02a7fbcb2379d92c5a03e8d9304d2db"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.27/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "8e2ba97250c3dc85c59af582a27c6eb94cdf940948fe0d2b26fa0254d9226d23"
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
