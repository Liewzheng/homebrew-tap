class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.46"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.46/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37d627e6850e7b6f83ff122287e4498f05fc4493ac210d89875848b949054a70"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.46/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b428c60332d61e198363eb22788c541c87ed17941ce043935f1e488248eae0a6"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.46/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "a5c4cd9c6e59d0a50d73382d10682cc93c3b304c4d2e00c66e61830693bcddd7"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.46/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "e064cfc35e0c3052079b05daf59e0527700da95c40a55cfd67846631e64911a0"
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
