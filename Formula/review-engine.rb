class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.0"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.0/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "363dda17e0a3347202e1670faa8e34ce46a6991c19dccb9c1eb63b9dfb9887da"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.0/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7f10055dc56831b1c6dd9960055f250668ec1dea9428b28e8550937beee4b1a"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.0/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "d535301ef2a5bdbadd069fe463f53ecc252aeebaaef2256a989be22946db25c1"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.0/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "6935c70c3bb7c35ea7f1794d950a198ac571141d3ab64978aa19281368844c94"
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
