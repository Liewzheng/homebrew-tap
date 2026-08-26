class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.39"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.39/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b6fdee27d8c96700aaf64217ce181eeab6d3cdbce9bfba1593c82036663ff53d"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.39/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9d046652dfd919238b6c6cb8665816d5b3360411bc77a5e71664655690080e38"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.39/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "dc09a5f0055ecca3ebc8d73ee71bcb0b5dbff00ec93f516c52c8da159ca72b28"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.39/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "22cb491603c7b736ce75e5274db77e20d54e9f32b7855ee35e695e45d8ba7db8"
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
