class Pbotcli < Formula
  desc "Rust CLI for Plane.so — provides the pbotcli and pbot binaries."
  homepage "https://github.com/Liewzheng/pbotcli"
  version "1.5.1"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/pbotcli/releases/download/v1.5.1/pbotcli-cli-aarch64-apple-darwin.tar.xz"
      sha256 "968d092cce171111fb47ec64b5d893c38de7531c195a016baf4dca7fd7002b02"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/pbotcli/releases/download/v1.5.1/pbotcli-cli-x86_64-apple-darwin.tar.xz"
      sha256 "f99eab7619fba710759d40c004270cbe32746c12a413e089b88b06bd848b8f1c"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/pbotcli/releases/download/v1.5.1/pbotcli-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "2fb1ae1b090df8041b28138d42853050c867238530906248f0825a01686cb990"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/pbotcli/releases/download/v1.5.1/pbotcli-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "27d14c127b56b00d0eb6b10ddcdcca873fae8ede497cdb78762e2533cb4b3001"
    end
  end
  license "MIT"

  BINARY_ALIASES = {
    "aarch64-apple-darwin":      {},
    "aarch64-unknown-linux-gnu": {},
    "x86_64-apple-darwin":       {},
    "x86_64-pc-windows-gnu":     {},
    "x86_64-unknown-linux-gnu":  {},
  }.freeze

  def target_triple
    cpu = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    os = OS.mac? ? "apple-darwin" : "unknown-linux-gnu"

    "#{cpu}-#{os}"
  end

  def install_binary_aliases!
    BINARY_ALIASES[target_triple.to_sym].each do |source, dests|
      dests.each do |dest|
        bin.install_symlink bin/source.to_s => dest
      end
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "pbot", "pbotcli"
    end
    if OS.mac? && Hardware::CPU.intel?
      bin.install "pbot", "pbotcli"
    end
    if OS.linux? && Hardware::CPU.arm?
      bin.install "pbot", "pbotcli"
    end
    if OS.linux? && Hardware::CPU.intel?
      bin.install "pbot", "pbotcli"
    end

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end
