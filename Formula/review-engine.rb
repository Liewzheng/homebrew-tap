class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.6.9"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.6.9/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c6d140ef567152d6b0aced8111235bb939016c526c8436030db07cd84596793"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.6.9/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2171a9dfadcdf0959e6d5add0dd9aa0c83f7cc7176b023d9b45a81cf53adadc8"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.6.9/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "5225d2458d3b72dec92d62299cd6af9a700af782b59448c5ad73df6ef791fdc0"
    end
  end

  def install
    bin.install "review-engine"
  end

  test do
    system "#{bin}/review-engine", "--version"
  end
end
