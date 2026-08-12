class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.14"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.14/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b9c23852cc7bab190440437bb18a012384d256f6bffd7a8f9bdc55d65deda70"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.14/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1cb00309e126c8991540bb469af0e0fec04dfebe22a82a43ef8c2c92bc06c9a0"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.14/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "bab8acaae213838cf28173fa4fc33f21e69182ad40237443df210e721d153078"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.14/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "5501cdb83fdc0b739caf53f96e0ac951a46303f706f55dfacaca1dd2114a56a7"
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
