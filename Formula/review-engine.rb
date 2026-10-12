class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.11.1"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.11.1/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aaa8e11152263dc9345410c5e50cf4ac9d47b947e8683600770b8f78baf9a370"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.11.1/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "395bdbf501d0a5d500e59f757c9babb92c5d94a72cc28efe0d2748c41a994a67"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.11.1/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "9041b5f7c2b4b2bf6a2faa4dac006af5a1eee753b8a0fe1292f01e96f62bf0a9"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.11.1/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "61ef1d5e1a4ee6695edebe265c7371e94abc45d4df9b58ac50d374eb12b5d4e5"
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
