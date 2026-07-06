class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.6.11"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.6.11/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e5f35dcf8f171089cb3066d7d0259ffbfc7815458766fcea0cceafe50059fa91"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.6.11/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "68377b74826a6a34cb6377648cf9236d10ac3a329c423a5054727d3cb18fa9ac"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.6.11/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "51a4c0139f99f54239752f1ef7776b3ece7d4b54d2a10ce81e2e837e487a9cad"
    end
  end

  def install
    bin.install "review-engine"
  end

  test do
    system "#{bin}/review-engine", "--version"
  end
end
