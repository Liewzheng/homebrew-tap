class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.28"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.28/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c45bed82211abb86de30af47b539ec09d8d2de4518e354430350869b6d9e7744"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.28/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "537160f8c3f873af107b668c4dcc21b0c60ef735d7b443057b95cc970e6b1335"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.28/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "edb857b1994c21f9fdcdc56b646674e12998a67fe27545650e196e17da96b964"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.28/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "7b9c3cb1fb682fcf87d1a2612749b01b36940d3b0727cd5631f3cb7819cf04e6"
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
