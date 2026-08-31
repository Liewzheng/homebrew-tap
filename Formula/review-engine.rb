class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.46"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.46/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a39e6180c9adaf3bfc31ffb359768be05fac391f716c68412e235f55b4c99939"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.46/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "92a42f6aef388ff8b2ac5682452746f49e886376fb2235b7f48a9353f88380ec"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.46/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "f705bd38fb0b3b9348eff427ef127ac346e88b883011e460075ba0db8a81198f"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.46/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "eac8b837ba2556962fada6a1b9f0b3a0e3b65660f18d918b47df977542e9429d"
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
