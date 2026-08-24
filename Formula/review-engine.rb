class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.37"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.37/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "930131d8f3d99cd99bac3d31c8114689c0596fa2d49ff03e6f5471273a9a355d"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.37/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d529dab144b7905dd1db94ec96ae09e64eda442aa8caabaa0f96dc69db7410fd"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.37/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "639ec7964411c2b469620559ee2e4bc8dc2129feba706d0d55a6bfa6fcf5ca76"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.37/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "23ddde565144ae98393a80e63574fe398f851ba9c0c86357dd6c5f6b6215aa1e"
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
