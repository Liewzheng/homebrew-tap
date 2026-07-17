class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.7.8"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.8/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2aa07b919f5151431b6a2380754eea1feacf0b914622ac560595838498c3004d"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.8/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "afdfb69fdf6fcea680a167bdd2622776a24a9e4c840fb2a0ca48516c92b3bfbf"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.8/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "6e8493b23e1a38cfac486e74e6a648ddd2beb29a1efa38c274d67cea40467e87"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.8/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "68935b2f03f43d9bcd2f5ccb4f22738d34e49c9815dad3fe4408280d555e393f"
    end
  end

  def install
    bin.install "review-engine"
  end

  test do
    system "#{bin}/review-engine", "--version"
  end
end
