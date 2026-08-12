class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.15"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.15/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "54e557274d7222f9ce0df7d1670b3983eb4110d1dd200c6d2b160ffc6ed3285f"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.15/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dcc3d2168cc02fd02ad7804db4c3f2ac1ca03c125ec58873cd21d371556d22e1"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.15/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "3b6f06f281d77efe83478c8aabd3bb9c8890718e33efc99e87e5de341fc8aa79"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.15/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "eab717f87148bf8ebb4c5554a62682143628f9ae0655bc83e5cd76314240b803"
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
