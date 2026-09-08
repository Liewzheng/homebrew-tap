class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.1"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.1/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e4f067dbf0e4036d504f171a4aa9859a831d3cf9eed554a34e343dbfcd6ea05"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.1/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a860cdab15e764b2d5c0adac3ffeaac7f13d94645ffc2d6aa08fa2068cf2a866"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.1/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "949f4fe16bf923d75f119f31bfac8cff34f18c874f54622939ce60cdee10762e"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.1/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "eeb03f8b512d65b235de32c13428452474947ef3dcf99bf9599ecccb5ac72a48"
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
