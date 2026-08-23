class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.31"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.31/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd16a23da538b166a8637f65206cb6fb0443247524bbfd40128628c2b80cfa44"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.31/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7d889cce6335c7d7038cbfe5545bd52dab1dd8703300a8a82b8a7afd17f240a3"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.31/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "e5604204f6ca61cec3b315639b2849f8ce8e822f5f0e4c8b1b6ce651e785d1ee"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.31/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "cbd22a37dc4dcab11455c12952741d8e2a26469b08c603f1c09f16319f6c0887"
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
