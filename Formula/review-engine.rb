class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.12"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.12/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e5fea87c6c7f048bbf5ebad5b0a342f07cadc7b57f5b2ccfda35373f7ea16c96"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.12/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "63a0e0a38e154ae3f25422259caadbf708840a042f1e6819a4b7bc967495ff27"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.12/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "60f3104c20c4e6e68ba76e2f986a94e1b25a51232bbea5d9b9978d44ab75654a"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.12/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "68389498b0282ba0f432702dea3777544284428d3eebcc5303da215ff74a7c91"
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
