class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.11.0"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.11.0/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "020d69b94c35fd6d901dfaa5883321a97a390f9012c5b549cc1e3a2f3fd6c215"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.11.0/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c3ade26b128a3f3fc82d483b4bdb6f6154ac336ae7abaa9a1e0ffc835f7454bf"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.11.0/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "eb4754007ab47c63023c74b08bfca02c29be33724d48a2cd704a2acaa52a6500"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.11.0/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "c49973cc0efa6bc1226fd84924fc386c6fdf4e303c95f239b695dc8cb1cb119b"
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
