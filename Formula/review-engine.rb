class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.45"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.45/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "54cc5834e4e5d778595f902122c922130be1dfe8c6fef516803d837b4236413c"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.45/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d9fe69ede658711cfcf8bbbe73021085ee22a43be66c4efd7180cab2703cc19d"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.45/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "404833477b12d3d64843f49abf96f28eeaae0b3ddce09f967f731aa760462eb0"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.45/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "21c6aa974cdbc08c6886e0bf23e67cb51a9f43a81c30079f6c4aacb67b682102"
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
