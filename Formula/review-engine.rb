class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.37"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.37/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2934c353cc7dc2c3f561876c4464a64b86fe169ac1f0842662692f9ec51f1966"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.37/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f5359b6b110b144e13569c069a397e73f63142fbfbc30169353a2be290af9ec"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.37/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "ca90a4e63489b962c4bd4899f245c203e0f5580e4845ba82adee4af72d09ff29"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.37/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "1249a6f611cb557c4c9f9253b48b98de8426b543ec75c47c4bfdbb79db7e169a"
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
