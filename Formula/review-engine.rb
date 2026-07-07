class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.7.0"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.0/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a20f5e384ee38bca995e94fb9a83a97fb508a50701a4d8b4e849a6c13e88dd6"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.0/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7412a96bfee0183a8fc24b125d6b41026be0f519433c87a44d62f35e24de1b17"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.0/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "04606c92a44cb49737e70dd446a8ef53fe072dd7791e0b6ecaefffbe565ecd45"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.7.0/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "89f51b28c95e7eb65c3a8b4f7b4c696436cfbc9908a0b31b5ebbc1636f28ac35"
    end
  end

  def install
    bin.install "review-engine"
  end

  test do
    system "#{bin}/review-engine", "--version"
  end
end
