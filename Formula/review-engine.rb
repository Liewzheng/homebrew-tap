class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.27"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.27/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb64b8eea4fbea7b49123c6a0816d525ea45011e96d643cd9e416845bd7b12fc"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.27/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bf1ee4a1848d5883f10dcfc80ea73327ba18a065207d65309aa09e899de1fdf2"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.27/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "b4fa69bcf8e63a7030220126a9ecdfef785a0070da397e4ca5ce4064b66b3b82"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.27/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "72675778349fca1ed2f3b12f5f4cc3090622142a71c0a1e961463d2163ebeea2"
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
