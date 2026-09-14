class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.16"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.16/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0fa6ee3a4198e29b6beb6cef3781e69340c6d68ebee14ebb872f38ef48d66450"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.16/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c6b0e545150063b8cb9f9df409386ac5f3ccc82851bfecae96590f29a268bb2"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.16/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "e29c552d4dd9a74b560447847388218ad0c64f3b780a29f84f1f17683926788e"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.16/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "92533be747245dbb791569557bb02698efe38b2a14c4296782f6a807c7ae0b48"
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
