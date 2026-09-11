class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.8"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.8/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "02f765c711c357dc55ef84d8facd5131c0621a79ca3bf27309900f623205e27f"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.8/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ba8b4ee4145f2c54175ceed8d0eec95ab5ffb5dd9ca8a36379057bfa685e30a8"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.8/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "41d5321a05d6cd680eae66b97debb737bed2e962f0d37601b1a2482c3d35a943"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.8/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "a84b2aeb34b5f355b2d6bad7ac677bf3edb5b49ed20c7fa0ff43eea74502f8ff"
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
