class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.0"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.0/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e222096224db609bb1b49425dac60d2c0c03408c88ed237073fa82ee49e01eb9"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.0/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1311da3bf254d42b4f56000ab1168a418c87ba57c69a6991a7d38a2e11d5900e"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.0/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "f71b4c62821ff87bf942a66846c65069c75c27ca5f8f6dce12f9376cd2563646"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.0/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "95f12742ff58e8c1e881a1204f2ee2e7f4e0766308f83dda2b81cf491c1f3695"
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
