class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.24"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.24/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4871a422ba8a269c6cfed49fabd20145aa57883fb2e1720dd859bea06fc11882"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.24/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "40aeffd4304c2fb646ecdc3e571550dd013ff8caf8fcaa4db1708224800889c0"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.24/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "376a55858c834cbb2b03c84f5c9b935ee7549c7a4a7e55440632ad2be6cdf604"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.24/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "3d3fbf6879c8941ab740587b6b08ebbdb02ab29b5e5ae7fdafc0ee6b0ba5bb35"
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
