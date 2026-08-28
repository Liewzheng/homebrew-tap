class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.42"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.42/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8005c64ddc75eec413523adebb32aa995ace0d0ea318d0467c82f806ccc8a64f"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.42/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bebb7596e55ae9f2625a689d5930f41561c96e3cf3b356656c7593f286053386"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.42/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "d326cb8ee28df65dd54647583f22e33641cc1c0770882e22890a675ab46ddc12"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.42/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "d22e0dfe41427d4ec166f942ee297a2f7db2a9962f29a376ecc80d9f4ca1ece9"
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
