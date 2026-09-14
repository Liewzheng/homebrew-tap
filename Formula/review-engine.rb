class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.13"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.13/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "84dad0cfcf89f1172e3bf72cb970351f1d26d55170385e9cfca60aba6fbb5541"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.13/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9670844c52f9935d971125554ad29acb46d44b1a7da5f877f21756152d8bfe92"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.13/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "e93483764404e53a7e1e7b63e3aa33895f6fe0c1b240c1c27ab23ef7776d65bc"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.13/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "2782b1d5bdc669b39387f71177f8beaff30c103d14aba5563314f55b1c54e3b4"
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
