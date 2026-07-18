class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.7.10"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.10/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d585e44b6459eb6584d3ccdf58e571ad34ecb3d128686380d4981b1f9ba7cf1"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.10/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "129235c061233b5f6e1fcd476ad30533c12f11de44491c777c46a1d78bae6cd9"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.10/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "baa711d3cd8df6f21d4859371881e793e7167cd8f03d9e0136fa7b10a398f54c"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.10/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "cbd47226e87b890a634c5b43efba08c9a0c3008290427c72fa7cc4f4469a1a9c"
    end
  end

  def install
    bin.install "review-engine"
  end

  test do
    system "#{bin}/review-engine", "--version"
  end
end
