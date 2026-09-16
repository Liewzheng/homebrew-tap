class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.36"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.36/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "05484b419e8dc1771714cdecf8d2c28809aa24ebb41433108f0d3f450a760a13"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.36/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ea28d79e08a744cb01da06f6618af3883e72e8b05f5dd5cd4db3db105d83d867"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.36/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "75473755ff5ca7f2377f264527d2558c5d804dfd5e29045154fae26142b2aff1"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.36/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "967860e7377fd625976f39b2674c55015553f2890c70d5d0dbc5056776472078"
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
