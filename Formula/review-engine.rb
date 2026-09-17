class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.42"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.42/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b26a4fbbfff5b6ae6495c94076a9ca1fb9816f79e5a1fddd00cdf936e716e10"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.42/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "028488a970074b6d4a5c2370a8804370d0f810c1784254504fcfb7ca7f90ba01"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.42/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "ea4481706714570425aa7ba197952ecb91b40a09a8278b2ff1521f002c2c7d38"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.42/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "bffae0bd62a3221ffbfefae6b1c97d19c17aecab85deb3dc0e83bf5c5b0e8a6c"
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
