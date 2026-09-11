class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.6"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.6/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc04368521ac0a8d9966a56a6bba78ed3c152a91425be9aab5b04463f6a2a104"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.6/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6a7264bf68492249b800c9e7fc652623bf546d4c039fbd933b64ca0d48c735f7"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.6/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "1e800fd21c491ad0de728df9f616655c8db61c6ac578247212f42631cfd0a9e8"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.6/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "14a3a78bf71846ab157b36ade3e4f679754990a809af3da5ba415dd32f7841e4"
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
