class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.34"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.34/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba9e8b216ec587e29a551eb619d20a56383a306f950737e5356215ee208b8ce0"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.34/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5d2d7894114c263f461af2f67636f7e387d91e4467aa66812f1ee624a24f72df"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.34/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "9bc12434c704956d8c3c13a1dd3f4c22f5a2b46e6bd9f9317db395043d1eacee"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.34/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "5c37fb6736d930b3083bbb09cdcce9c52380a446cb2b24344bc86d307e669a6e"
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
