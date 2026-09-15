class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.22"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.22/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "04e972244cc79e4f45f77a3c51d483e6017f31c746b4732865f6206fc7717ecf"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.22/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2bf5d8be9fd7e31bfbb502f07e4404f27a9870f43d0c54cbf0399de5b2483b1a"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.22/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "8ed4c40fe63c0beef4c18efcc778725dc68d307962dc945e8d4f0a5954ac6163"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.22/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "8a16e118c543e95d67abb95c69d9a33dceb22ee7c6a0cc525ded731c1b50a424"
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
