class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.50"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.50/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "08f4d1efe5ea4ead707b4891b612c9bf7e290a19c2ece4015c11395e637087a7"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.50/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "02c943f368559ada3d89104a7db43803c927824dd81fa4201c2f207beb3b250a"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.50/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "47a6517611e47d45d91af98d8c301902402b0d8f30b80777c560689a3b322445"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.50/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "2fd4c9f9b4ef9291b479b93abe6147f16027d0316acc8968c3648c262cf7d508"
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
