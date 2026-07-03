class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.6.4"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.6.4/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "717c8504adeb0b2168dd6bc992163a54f583185bc234fa29ec99d80fddabf022"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.6.4/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "123e861f99a99eeb2150828bd8f2b9c99817182852aa727949d3d6748be69e4c"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.6.4/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "bd8e19da84e343a96789adfec19baa6c668085486417c3cedbe9a2e69665d5f6"
    end
  end

def install
  bin.install "review-engine"
end

test do
  system "#{bin}/review-engine", "--version"
end
end
