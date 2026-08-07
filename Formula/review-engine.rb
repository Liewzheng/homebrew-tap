class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.4"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.4/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "36293d4d15d7bd36afe648048d3ddef47a62c8e4805d6a2d0e4ad6eeb495c886"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.4/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4c3f8c0113522877bc0c986d169cd895d18cc12555aa19de72e3461a3fbb17ef"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.4/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "ff2d5d515d8ca3a0d4d0d9b5cc96b352cb9341f6f917568c38d30d28b5b3a5ce"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.4/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "0bc610da10fbdbb589b8d81f80da564bef1b14b8969eb423440978a960bdc121"
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
