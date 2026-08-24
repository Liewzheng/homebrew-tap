class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.35"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.35/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f481d5f749826d718bf1c03045b9460928a5dc1150a855bcf2cba0a042a8818d"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.35/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "17acc9b0ecde2ba5a19a9d1bb3f470fda5bd4c4e413f636ca0b0a8867894db20"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.35/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "c292eeeb55c4200f56ca778a7a64bf51885714e5390dc8c7c3a8e91fa9bc296f"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.35/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "c62677e7d6ca07111ec7798212e7b23c25b1c47333a4d73336b40857c38a787d"
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
