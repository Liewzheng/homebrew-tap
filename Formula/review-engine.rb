class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.43"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.43/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64484a0c5ac124e9f117889929a71d451f9f99b56d5c3c19bedcd0f43c56f315"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.43/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "009717051d1137a0ab37c2a74ad6fa10c5598e0a495b154d745768f056586a4a"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.43/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "7b386af0a2419dfaac6cb5537305e67daa9988dd4fb8886c2f923e53e5fb7404"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.43/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "c20609896d362694ed4cd0cc34267478f20d96e926c57ed468ebe26162f61bd4"
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
