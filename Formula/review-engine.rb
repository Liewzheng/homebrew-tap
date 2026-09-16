class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.40"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.40/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef1a94249b3e970f5fa87f22a6c06e3cb5bd20fdcbb339f35dbb31c689fd77ba"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.40/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e12622adc78aed5576be688248cdcbd0836be74b99b279a6dac055d2cf2fe965"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.40/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "bb719ee6d76c44b1d236f1df3050fb3904158f4abfe8c9db00226cba82c107eb"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.40/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "77bdf85b4a78a7d42d048c1166966f68c944608d5c1ad46a741f5e18d8f804ef"
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
