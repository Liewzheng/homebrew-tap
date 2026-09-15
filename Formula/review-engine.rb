class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.29"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.29/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae83d927cc092bbaf5e07d6703b93357fd07d9b7e726a550464905189c13f081"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.29/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "237b251f72beaad21341f387bf31922d0cc713333d282a2f87c522b6b8f789d3"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.29/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "5d9c93910ca90767309188b3bb67892e624d8a25b4c9fdf9632673fabc711640"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.29/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "4a5610474ea5498552de0079c282130d21a67e4252a47a8f0fe23e3809c0f1e6"
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
