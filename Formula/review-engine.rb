class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.6.8"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.6.8/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "846238a061c6d2e016f795a90e9b58c8920d120bbbb5129ac4030a0f903116b1"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.6.8/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5c176a8928bf13631a7e31b9632d01dbbd184700c4467f4e407b0a617c5c9352"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.6.8/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "ced4c5baf7313d9832c3ea0e38a3c235509b1442fd6be0210d074a346126d5bd"
    end
  end

  def install
    bin.install "review-engine"
  end

  test do
    system "#{bin}/review-engine", "--version"
  end
end
