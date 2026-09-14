class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.18"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.18/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c974c49433c93f519963447bc35604623164580f9342755383f7ef2dbee30027"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.18/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "465e2f53d7fac7c5a5149337f45f51f1d71ad76d877f8da75bcb6fc877f7108c"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.18/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "449b1f8d8f8c19c9aa49ab376dc7339ffce67aa0fec70262c0fce03dd1b8cac5"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.18/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "a5de4fa7cd3ec59923e7d4e8c06bc225d4bdcd94705da2012b1ec90430b92217"
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
