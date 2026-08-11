class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.11"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.11/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd3884dc05ee335e809d21a5fc043758a0055e3aa177a4e75fef5d9c040b07dd"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.11/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "771cf72f8a6f4ddfca5fbafe7ab64d53d2843bbd9c2b69605c02159cf73a664c"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.11/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "65aaccead751bd477990b6a34627f018d79d061f1170a377b405b2c3ea31c675"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.11/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "7b80c1cf93cba8dc439610e7d4552944138ace4211753380c41d8e065104a055"
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
