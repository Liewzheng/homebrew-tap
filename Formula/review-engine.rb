class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.17"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.17/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "55ae73dabb76e4ab1c0c0e3342be66538bb5a2e62b9ff92cc013733a9e64ac10"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.17/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7e968fa4df1b06a0b478218964c7e1e16c1db3dd646246831ad30d3fb83dba50"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.17/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "f0f0b82963d49eb8ffc81f86853df997d006ad493ea265a4cb5544f90399a177"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.17/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "60b6f570bb6718753a034e02811d5ea643a84e2c898313c793383985c5794416"
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
