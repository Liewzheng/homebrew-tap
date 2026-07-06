class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.6.10"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.6.10/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2d4d2c73b852fb275c1b79b9a19d5ac36a8858e5cf73854527ccf73afc64029"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.6.10/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "69abf5ecce680296d8636583324af98cd97dbdad7670ada9f15aa6828d1e11e4"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.6.10/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "075883e581a95511c4dfb3d54b314efa6baf753c83a486191b6f642d46a5e1d1"
    end
  end

  def install
    bin.install "review-engine"
  end

  test do
    system "#{bin}/review-engine", "--version"
  end
end
