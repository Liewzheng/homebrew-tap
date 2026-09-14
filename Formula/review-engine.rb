class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.15"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.15/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "379102afa0cd85f41d6ab3085431063dd25313f0ddc0e3801583e24c96ed39f7"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.15/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ee7622affe0f345204a598b663af2de8fc830adae7995bfa694e651f47349117"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.15/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "b69ad02bd0ab9c939ed5d6cac5133bc3372df433967486e66dad4cbd527146a4"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.15/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "471e3b44050f7369b2b2a8f081c47bb021f11227666eb37080a34940597e638a"
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
