class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.35"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.35/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0153150a1947327fef887d31fe82eeb2ea169157eaf26e4c5176fcc34da078c1"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.35/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d8b953f7c669d587f2fbc6017aa8f1b19a0d03f3d554a2d4811247d1b97164af"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.35/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "8c64c0aa48d6283cda39e21d7c8b91f4263fdb446948d5b96c1ab23372d3e242"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.35/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "702003bdb35ba8f90d8e4a53c9d938aef21eb7ef4fe8894b3b65a476b6aad25d"
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
