class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.38"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.38/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d7d61ec80d200f506b6294740d3fc1985402ab7a6425fb34e2c76f51f54ce86"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.38/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c5be400854638642e2811627b3b5336908ced3563fe67ad364fee3518ffb9af2"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.38/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "60a61ce1c94a8fbe72a0aeaf08f9b64b1e37b7195bd24e31c9a247dfa64440ba"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.38/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "22cea18ce62553196f7836811546bfa3e9ed28e7765324adae4aaccda1658ee6"
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
