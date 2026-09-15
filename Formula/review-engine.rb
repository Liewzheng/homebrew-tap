class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.23"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.23/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a93ca59406171d939e97ef5b1f06d856c298732158a5508422ee0957ff8da82"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.23/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4df25d4fb190a8da32950917c3a3e0e64432f4fede244a8c5528290d0ece1850"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.23/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "4c764f9351ec75102e97fabfb522f351fec91ba6bd805c541839fdac6fc1107a"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.23/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "4bcb94a365e7566da4cf8f2b228a214f275f3662f7ede5d46306908eba77afab"
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
