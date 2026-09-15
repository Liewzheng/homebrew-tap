class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.28"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.28/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd54c7cff01feffe914ed6fb7d3aafd04c996eb2a4dea4103b2e988526f5c42e"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.28/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9fcc0fc5f0be35566ecce4b2ae8fe7b18200ed0f74e3a1ca5e8ac566c3564fee"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.28/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "7d66d2e728ea269f714d88e86b5c328a5a8be9b2d2bcf1186608d0414b3511e0"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.28/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "63e7c5f3b280b9dbd2e0bc0dde49723981749cd79463ef46a7896dc8839f23d3"
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
