class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.41"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.41/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "08111c29a196ce30e800331485a357d889b1f9a90bb6e565bcf768fcd4d360d9"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.41/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8332a727b587def7f9b1c8bfc85e4bc4f3fbf58fcb825296ab666069aea65784"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.41/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "0a980cc818bcf49daa02b28fffc731af7b4c86294d77585e017a92b6a9b6626a"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.41/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "376aee60bd78503a30fb273852aeb85e11f6270a9fb2fa70c473dad0155ce7ab"
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
