class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.22"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.22/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f8d30d79fa138227ba8136899cdd3ec3dbf2cb052bede0c73e29ebb70e3c4fc"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.22/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ce493b64ef080619946a5c0580c326e30a9ce2b46efd20824639e2c4c4122d40"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.22/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "6d2e858f114214140f1b5bd07661ab8e6971e117a36ded0677ecd4a7cf9101ca"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.22/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "83d82f7761e193807573ad3b59b4d8d91c671096249b59c4486c663a2d67ee7d"
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
