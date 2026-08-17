class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.18"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.18/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "224880d598ca2790aaed65a43e8562db05189c483ca08cf9fcfe034546db0bad"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.18/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2dbdff7846e73cd66dc2a88f41f2ac71f7e543ed196817be77b16b33cb965716"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.18/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "709d3c320c15a5e3353a971e77e3a1842b4fec3e2a9a550655ca04768c59727d"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.18/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "8d870a24353ca4103b08f04b8514979ffe6b6c3532b922c5e74957fc2dd07059"
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
