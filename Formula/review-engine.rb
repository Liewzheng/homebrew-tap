class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.6.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v#{version}/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "50c13afee9f72930abde87cc2d103bf49a88cdf3f9e29208485af4993af4d42b"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v#{version}/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b253498d4045e2b8dd4a60ea66f9f4575c5d51def8c2ff1b6229abb25d6e1ab1"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v#{version}/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15ff1d2f48997a0e641e24a527f1ff47d8d2cbb35d607ee6b306e28f116830f1"
    end
  end

  def install
    bin.install "review-engine"
  end

  test do
    system "#{bin}/review-engine", "--version"
  end
end
