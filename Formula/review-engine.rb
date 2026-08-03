class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.8.2"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.8.2/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf119da6f9d3ed2526bfadc84a233b676b59e0aed733fbef4b47854ef89c60f7"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.8.2/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ba2ee581fc1ba0f0328869d4c2f126fa0c8524c656cf3edde63024949aac538e"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.8.2/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "e58bb058b81aef2ab2ade03e1686cc20b42ec55a5011b106a0792411b6357170"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.8.2/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "5da978f3d9d6a22c7146237c45a30197ea5a890c3765641be342310e7ce79ed8"
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
