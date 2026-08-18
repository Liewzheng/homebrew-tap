class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.20"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.20/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b51c2ed9d3a188890ce9b632be9e8fb727cdebe90222149b38602c375aad234a"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.20/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9dbea31da364dd15bfb8d4fdb76e120ff0a7a2aab97469a011340ed3a8fbbfcf"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.20/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "9504d809e829da520d05a1811e5c5f02d5e3d75f4a2c3925c50d6e37e67857bb"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.20/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "67aa454130d82ccd64eee8736bc261da289063a221a94580defdf2649e2c822a"
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
