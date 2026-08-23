class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.32"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.32/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "863ec19281d045fdd0fda24aa3aba1366c3f6ecfa6be0a1cc35cb1a6eaaa5da3"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.32/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9884d5a7d01b9de0fb3acd7cb1ad5f704f81185d0ab549ceccf370a892084eff"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.32/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "9cb4451a0668dc21338dffc96fde8abaaec85cc890cc2b664bec6b7adf0a0f54"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.32/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "92793bf87b8061855a146e0f575411ff31e61851f36a6b0bac49e6700d45804e"
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
