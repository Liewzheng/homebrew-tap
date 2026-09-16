class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.31"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.31/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d8ade019607b1560faa0b899152dee234b9eb43cecb8ae8e1eb875f75095eaea"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.31/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a38fb1a8f88250aa090354087831ae0595c31c2e0781dbf1e8d9a191e06f2f62"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.31/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "b210b7556f108e440669efbaf2239b6895da6d11beaca2e1081541935094300d"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.31/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "1507d7a3781d49cb60d31a762d4dbb6eda63023c7ae3cb3616f1c2a5b6fc2b99"
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
