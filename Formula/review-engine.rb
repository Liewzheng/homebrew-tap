class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.26"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.26/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "12e291f952211af1cf4147c570d226910878bda769f3762efafd395f7615375d"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.26/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5aeaa832bc27385fa7162df65b065736ebdc241119412fe115e64ba6626eaa0c"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.26/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "3d566a10e98f0fe056b0f181b13d95de49a9530242030dddf7e5ede5e9f80675"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.26/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "cf5982e9323d0c30e88fe426ef2fc5a6c0f93068050cb9ff5ebc65671bee6daa"
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
