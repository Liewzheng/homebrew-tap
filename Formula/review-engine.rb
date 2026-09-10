class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.3"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.3/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "504523b54de72d7c13c32e1569269446051d60da03798cd0046f31d32ebce013"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.3/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4056f766596314e00aed7c005779ff4167d046a3107b860663834f05a2f9a5e7"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.3/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "5af6f81ff360c9b0eec7b1e964ff6586830fd51d6262723d9144c579b5158ed9"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.3/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "16406cf9f9314962a0ae06ed6ddc295f9b50e42af7b08f86057a44ffac137183"
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
