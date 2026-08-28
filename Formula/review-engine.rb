class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.40"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.40/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bb2d9d39738f7ce596ab037fedb9a1462deffbb2c45d2b06c4edd4ee1dcc848e"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.40/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "032da878d9850eb104275228e91a5715e32de35667dd9880baee4ebe0de13f8b"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.40/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "5121c202f65517824bc3f49dc9863e4525ac435d1de08960b04312b83b1160d0"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.40/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "1bcc834fe91eefadf08ab08b45bcdebb094563cc3731a42ffc8042026edc45e2"
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
