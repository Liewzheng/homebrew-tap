class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.21"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.21/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26c2d2b6c64129e784c1bd5e80a099f90a2951a0ac694c920a653ca5431165fb"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.21/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4bbdd47cd3d4890055693ef1c1e01c3a7f23347116a7e88eb2acc0141302cd77"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.21/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "9fd2f02b03f6da1475a31870bfbe1b92e3e5d77807e6da7f46f857f55fe526d1"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.21/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "acea1347eceaed1757215f901aaf008dc2d1f73dfc65a8ab247f17a71740410b"
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
