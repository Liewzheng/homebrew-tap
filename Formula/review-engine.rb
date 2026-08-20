class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.26"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.26/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b2aea94369987e00f72ea4102b70f6e6684dd6252b35f06014852c1e2696886b"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.26/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cafb7bde03aef937fc3acb9d10806130c773cb4812000307ff37b39169d7f303"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.26/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "5be84c525dafcabecfbf481ebdd3efde7da266b7613203ffb783d98c7d96aecf"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.26/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "ab65b9226b9f738af5f15fcfd5850b2475626d516cb3ffa0c0e224ae1b951f51"
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
