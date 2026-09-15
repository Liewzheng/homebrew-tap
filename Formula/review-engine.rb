class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.21"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.21/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd1a8cb3f92932db53349276fd1334887b700c60689c1eaf3852ff0adc68acc0"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.21/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "426b2b208ef107210d90d46cad210dde4bec1ae84678592992f2973a88478f6d"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.21/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "d7bfdf0c604b5c503a93b07ef5ad117c3672f57776a64bfdf5d608e3abb592dc"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.21/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "7c1bf34b7a147919883375a63ddbc51031bb3695ab2a4955cd4eb893ca8e6f00"
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
