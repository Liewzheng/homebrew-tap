class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.49"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.49/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "876ef14a53fb8e9e86c91e67317898d4663380f857093437eddd8db0d95d38bb"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.49/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d60c659815bacbcbc24ad66b0eab84a5089ce58ae581bdee84404d75dac07fa1"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.49/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "32ee59b0163b585f60e663fb75f78c55e2bb1a5b0699fbd4c84a50de9ed4852c"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.49/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "e043f485bcb6d4e2f89cccec06e41af5a9902467282a47c1ead2e74c11fa7511"
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
