class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.44"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.44/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1757ea4179dc5d09052874ab228682c1afeeb111919458e0024bb64d710a0a0"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.44/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8735e737c6f9e392d769b00d7e340c3a3c4891c46a1bad2986c40dc252d8e88a"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.44/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "58ce5835b3ddddc0431e5f57ad6c8c702b7b1aa07d20130989200543f535f4d3"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.44/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "249d2553eb4616dcc26fe0294694db2f4339387eff8dec260e88e0aaa6f9809e"
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
