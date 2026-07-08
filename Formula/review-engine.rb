class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.7.4"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.4/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "78a75edb4dbcdcfb63ad55549ebdc663824d533527c372b6cfec9145ba369613"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.4/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aea25c5dbc674439252553b0debee1f390678f849b8521b527d34a962e076a1d"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.4/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "e37dfb4eadabf72c2d945bb41e6a0c479d13fa84b73f66429cfe51c252433648"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.4/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "9f09e08daa207726a619845b183b1aec02174ba0ce14153a311e5b56a65aad5d"
    end
  end

  def install
    bin.install "review-engine"
  end

  test do
    system "#{bin}/review-engine", "--version"
  end
end
