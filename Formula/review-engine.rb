class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.20"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.20/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "200c02e1c98da7ef13ed401378cd6ab2b25c775bfd3aaee1f5b1abe20952168a"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.20/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f9687c2743bd00bd71378ea19fcb4e975550bcdbd2c772d490f90acd2cd11122"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.20/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "e95d3b95735b3a84741dfc07fe741f88c36660275e935cb723bd64bd766e5ccc"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.20/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "8fb8589b53a0bcc932bbb4b2076354986cba203854398a62f8af59e6c00a6193"
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
