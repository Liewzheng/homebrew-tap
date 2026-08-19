class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.23"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.23/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a1245dd3c41b41b6282216fa5e3302c421e3aa35d5a9da8551e27df2666e7c5"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.23/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4d9e37dc451bed33ca0e69b6a1139267451e7029ad47fae23e1c6f34463611a4"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.23/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "9c87642dc684b901b30c2d60b6ad321dc01f535aee856cfbd847610559b8849f"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.23/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "875f1a2a4ddcd37cf4e9456360fe712f1b94028c2813fc5bdce8179eb775c457"
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
