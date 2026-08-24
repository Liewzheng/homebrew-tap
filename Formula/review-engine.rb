class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.33"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.33/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7618f7909f489d8fcd951063169ecace1917314e13e54026136cd3b0e56f6028"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.33/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a879b891690ea22a35d599c43266ebd28fec213ca3a55fe7931ecbf482c024bf"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.33/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "d9e64d3913c7b1e4f4083a1c1148cdf1c40ab7906b3787602b4b2c40e0c4e525"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.33/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "1e5a17005af8a4ae2e59463834eb3ba7a1f5d2845f634f1ee6657e6a01d503ef"
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
