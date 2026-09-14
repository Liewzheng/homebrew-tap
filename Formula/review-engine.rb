class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.10"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.10/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1fa3fa6d48caf3a4388c414f15a1b017d9f7fc54042244c970b824b604676601"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.10/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "856f3074564458f53e983c8fd37c62e30a58d40993a0092b1cd0705fb6fb669b"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.10/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "c273e7039c49a77fd0b1bbc4f76b9937223591519873482b056ff2785d32f975"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.10/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "80dd6d30cd47a50c07e558892d24b7759755a75fc7413be4e91eda153601f24a"
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
