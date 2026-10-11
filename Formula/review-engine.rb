class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.11.0"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.11.0/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a48b78150f47406396dbf20fc7fdd7a7851ea86b7b2e8f66976d1dd7da38045"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.11.0/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2284e460e05714535f8285358ed009d1bbb28b1ff380128ac7e53b38f6ac72f6"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.11.0/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "573c3d6148aaa4f5bdcc8b9d434241a1f91b97d5c618f4b064641553aa823dbc"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.11.0/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "cd96d79c6871485f8c73c9b1530e98ef68d0372a697bced582a42e2cd1550013"
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
