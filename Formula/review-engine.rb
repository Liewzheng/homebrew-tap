class ReviewEngine < Formula
  desc "A virtual CodeReview Board for your code — multi-expert, scored, and actionable"
  homepage "https://github.com/Liewzheng/ReviewEngine"
  version "0.10.12"
  license "Apache-2.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.12/review-engine-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99d7cd29c3ebffc810270797ae2ac36b5f66e7d99fd9fe3463950e57bf67f434"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.12/review-engine-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cf1c3f7f762c0aae9bb92429fdcda19dfe456a95c5ca04fed5effaf363cd7cb3"
    end
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.12/review-engine-aarch64-apple-darwin.tar.gz"
      sha256 "138e1c2740c40680b178a217c765b8e1391cb4e87be453d8990152609edaa9f1"
    end
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/ReviewEngine/releases/download/v0.10.12/review-engine-x86_64-apple-darwin.tar.gz"
      sha256 "9260636d2485ca6b28bc7ab33d82ddc9154949db483fdc5edc7e729e44e2f74e"
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
