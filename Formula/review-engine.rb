class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.1"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.1/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d68546791b2d355580f59638f67b01e6cab0dcda5de7602b6fedec88f707263"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.1/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4e7f78cb7cd33a12d9ec0e081fb7cd52797fa0a7d4d90c1246eaca86289c5dc8"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.1/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "f67befeb655bd8634d2662dcfdfb7351fcb0b6b3f26ae69614c62d04a1a871cc"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.1/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "dc3c40902f209c6b9f958f589e6ce26a459ab5287746f33d080a03370b977c60"
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
