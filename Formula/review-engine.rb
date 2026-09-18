class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.45"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.45/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "854e644e9ea04aba7426b8475f97554e9c29e731b503b91b07206424dfc0bd18"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.45/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a905c16b28a2b2cbef2fdcb44c1ac4646f0e9e673b2a20a5bb82c4184b518511"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.45/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "7f6fa6a92d1427f4cebbb93d373a9faae01d93d7a251213f9a13bf7d2a13768b"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.45/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "3378fd1fbbc3090b890f77cec1470488e5e68494e7f392a74fbeaf7005d61b84"
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
