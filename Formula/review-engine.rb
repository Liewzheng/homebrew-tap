class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.10"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.10/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d8157f85b9e37eefbe7ab9020a392088b5cfd33191b92655a56ce155f8433233"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.10/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b8dcae5812093fb2fc30bc9969137b1cc4e6bf8351da8af87199483224e67d30"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.10/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "16064bf8d0f9c8cc3d6eb0a91898100e68355498fb1a678851d028c30d40a240"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.10/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "457e7c9164d86fe3ea5ae2c81065d5523ad22391db341c41bf50eb15e71ab8df"
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
