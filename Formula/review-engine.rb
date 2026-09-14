class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.11"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.11/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "973de672c99f296ea2e9d277cb97c0dd3c7a4d92a6064f9f69d894bd8fde2524"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.11/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "35a9b370f59dfd4bc5374504465b964ec15f987d2e88f4b0f092432079d0ad73"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.11/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "eb199470af67f4a3f79c8680f5dd960f982c37e2791c4edbc3ae2bba53d36a46"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.11/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "4402b08955e07de54468fb8f87a107a51cf9cd6742fce2c7831d5f122412ddb5"
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
