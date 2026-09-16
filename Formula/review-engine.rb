class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.33"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.33/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec36675768c7f228028cef8f36607b9cfb83d9e51fe5bbb1196f154905319e95"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.33/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6de55daea51f9bdc6e9f43f48a181d2b9d71a0375e957ea960fdff61568fb6b5"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.33/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "f02b7ff86f801184066e012095ca04ecce6057d495fb87aede88232cc12d0b88"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.33/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "c5e67f01400af12aeece4c7e2b70340eaa3bfe78e0fd3b8d0c6d45f07c59cb4d"
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
