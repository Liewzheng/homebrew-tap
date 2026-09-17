class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.44"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.44/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a8adfe03b0d02d2ee08fab07c30158c7fc20f569073a9f3f2098324cded5dc4c"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.44/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c642c20fc7b8b427977760a10e2926238533c378bce7f3b36b65882d8cb8b7b"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.44/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "f0533d1ab87de7c83dc49e3fd68dee5d8fff08f132e7732a6a6a99407232f90f"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.44/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "e703454abdc77abfd77c729b0782c7cae0774a3fb07036c1f73bf42144963a9c"
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
