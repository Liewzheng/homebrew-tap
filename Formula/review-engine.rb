class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.36"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.36/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0750c63b4845cea13d3e4d20d82488bea96687c0b1862f36720bb621a56b66ee"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.36/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8b815b7ca74c30eb6ea5a28ccdb0cb0a2ec78ac9094b9989c0860d8d38371ead"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.36/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "6fbc908139eb762f65c0284db581b594223731665cc33a5ce736d4b5b6877c6b"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.36/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "57f34278e58238ea9edf8c71085eb2ba71a13a66da4a310bd388534318877fdd"
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
