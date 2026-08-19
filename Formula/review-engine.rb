class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.9.24"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.24/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c20c61658b20851989accba4ab88c67c39aa1b16146ace4e42930a8ccb66d073"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.24/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "83303d873c710c8b2b2b62bf78ca2ef0f9f8d95fe8f09aed2f7707293a8031a0"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.24/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "2bdc2fddf3455d765044ed29124bfbc5dfa523931c884e27db1e868b09c2d024"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.9.24/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "48f64624e06629fb0e7323b6b3a31c144eabaf6cd0a97588b9797837cb2f5b93"
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
