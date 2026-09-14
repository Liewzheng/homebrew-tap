class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.14"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.14/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9453c09290ca8d9c8a9259a5294531b1242848e20c5f54a76f63fb96034be25e"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.14/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "323554024e187053b6a13e89ddf8f56970f11c39861e0c68bd61aabaceee765a"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.14/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "1a56a8b6050508b1828ccd1a1346b49ee62176960563e2f3f27b7943be70a479"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.14/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "5b91ebab4ef49a958844be26662d5d81fe3ba6d80146a823e351120531ceb00b"
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
