class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.16"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.16/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67accc192982ee312088702d5cf18ddcde5bc54ef8dec9904ae53eace37ab540"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.16/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "a7319957bc2b047ea9f708592a18229325823cf169b8e7e712f4860d8c7f1c51"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.16/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "ad63e0bf74a6a1f4dcfcec4283e0f1e8113b5be31ef3f9198bdcb27a77daa46d"
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
