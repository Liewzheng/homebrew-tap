class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.39"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.39/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe4e9cc2eb63ee6862f03577c88025ab374c80b96cbbd2c97d520975afbe5fe8"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.39/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "823530df3a33f00ce1278ceaedf5e9093386e4cc87d678385c7e66208494b540"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.39/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "27bd05e01b2ae37c8030cd1142504ec3cad64682658f1ace6c982ec49b2deeab"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.39/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "b5a2b14c1cd7bef9f8c65ee1edf7efc6e4c2460391d1f120571b91d01522b2fb"
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
