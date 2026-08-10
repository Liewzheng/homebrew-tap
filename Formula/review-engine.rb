class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.8"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.8/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31c92c17cd9f23505c55db0a534ef8dffa954f8c669ad48b00d24c7ca0dfe7bb"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.8/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d6d58c98df7abed8d2e61f51e007bc7fee45ba610aa0b3f1eb81769d18c7c6a"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.8/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "e9751f0a240dcbe44c4d2fdff6468fbc407b2e2064f26ac05b31a2e6052cebd2"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.8/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "57c8c00b66a2eb7da0f54eba93920ba714283f7b4e386f42b45a2f2874c21c4c"
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
