class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.2"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.2/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7f190b3dc24b838b4965fdb6bf485e8b28a83d6c1f953f0088fdcad4548ba3cf"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.2/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d8aa1123644d5f83c0a3efb784dadf696857feef84fe76778edb65892022e74d"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.2/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "d22777bfeaf1e0b916175fb53a561c5e7d69a35ddbf445e820c885e8a1b1f93b"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.2/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "7687f99365dbc280d6898c23880c46e40b5cf3f9b30f57ec5823095a18a0cb7a"
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
