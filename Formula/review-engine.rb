class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.29"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.29/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf491b9b446381bc32e598f2dc6522d2d9dd54e53df3f1c2f188ecc6326356c5"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.29/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "182acbde8248cd9070be9905e297cc301af373c891e7cad6e83eaeb53a5420e4"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.29/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "19a2309a3120aaedb28482089dd904be555f04f7abfd3e49c0a70972224f3320"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.29/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "12574ea68846055e562131ff8855756583aca5318d0ce9c2e6e54c6d2407b00f"
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
