class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.2"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.2/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e33452ae7bec0d40059ec77609c03ebca5ae6900db4b36088984d34b408514d0"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.2/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6e57384d0db2471817a3cc3f088fd2c86a1749ca4a123166d0a71f95f5b48620"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.2/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "eb39364ef1862cab99becdda5027da099b513453bd7aeb977ddb1995850e5fbc"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.2/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "a081d27bbfcb443305af6dd1e6e4f3c781d504b989fdeaba1e8d581cd57d8997"
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
