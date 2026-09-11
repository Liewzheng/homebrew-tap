class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.7"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.7/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d78abde6d7745a21c209c9510caf72993cf8ce53e88dba531c282c9caebbafd"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.7/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e28d4afd83e4540a0d50acf8d600f4c01a3db62919636c05949433132a5c2c5e"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.7/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "10f433a801d2f09157b886ca614841bffd857b1d92dfad291f9b858ce9030e75"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.7/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "04e7237bcb449c5d210550c9b864590f3e85252ae6454bd07d42f9f2f5c00341"
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
