class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.38"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.38/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3613b795a9a3362841a766934b67d764b450e5462b3910aec7df58f419aab884"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.38/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2ed775d0805f425f64f5e8b466bd21bc60ee37de692e5076da42ba43b9fe04a2"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.38/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "88dc5ee4b6e509e2f5d298ef93fa108f4d8348b25c084ec4670b9952e728dd34"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.38/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "aa600dd581c9a940b295442a0e45c90c2e0293bc9c5be559e060fd9435430aa0"
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
