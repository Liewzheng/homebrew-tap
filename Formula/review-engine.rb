class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.19"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.19/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a389993faf00c53238f74a70dcb1054911190de19fcb9d01d7ddc9605c3f4edc"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.19/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "09bbf0a487a9c1a7afa03ea3050af4063a60e0e77a4c41256686e9b9e2f0fe89"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.19/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "64b6bfcbe783b5ed78591cf5ba056ccd8ec6be8f226252f054f0adc8c5b3b272"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.19/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "5e154193746d6224a3cecac14639f236f73982a4f962d64a85e603264db6ceb9"
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
