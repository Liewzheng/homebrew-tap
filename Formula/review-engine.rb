class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.32"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.32/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "448530b4ddbc47a35b4cc2536cdb0c86c1f094e7573f25f9681cdcff59bbdcc8"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.32/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c565e4fd26a4b937600f8f21cf1f186404991f480ccfe69d658c025dfad6e49d"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.32/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "7745b19fedcdb34892ceff05d2ad918f8ac2be371535e1bfea211b3060239f03"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.32/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "58683e5eac6d3b6c457051ae7bcf89dd8a9ab5cfa9c656c04866d4298d355c47"
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
