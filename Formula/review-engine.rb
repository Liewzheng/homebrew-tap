class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.5"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.5/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5a482e3d3c914a8d48953f9f4d9d281ef6ff01ce906cbdf4aadab40f7b765b34"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.5/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7493003a923bc959f383ecf945bfb43804baf5da228f339c9a1ac0947914fed2"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.5/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "bc11b7df8be84e227d975c4d837e09d2ce6dfd0c360129b4ebcd35509ccacddc"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.5/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "c58c549033a68d736b30ee7660e7d5bbe1861ab6bc67e628e46283d3c397e2b4"
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
