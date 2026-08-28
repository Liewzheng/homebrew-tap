class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.41"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.41/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b4088a7e0e9ca58b8ffcce188728f35c7a8efbfa3457937cbff1bc1ba156dba7"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.41/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cf1cf0e59bfb5952b41a283dc9b01fd6e23bbfe4f93354c05f43af43c9fd6b09"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.41/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "5196e01c75ca44cb8ec2622661cbd82428cfa948a020ee4db0a73ca3f881cc6e"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.41/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "cae7fb5038d2769f7aed1c3c029365f3d14ac26e313ea877f87c1a9ec84bb972"
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
