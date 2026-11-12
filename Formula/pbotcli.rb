class Pbotcli < Formula
  desc "Rust CLI for Plane.so — provides the pbotcli and pbot binaries."
  homepage "https://github.com/Liewzheng/pbotcli"
  version "1.6.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/pbotcli/releases/download/v1.6.0/pbotcli-cli-aarch64-apple-darwin.tar.xz"
      sha256 "72ef610479a5d76dc9183b69ae70c54f9ceab4de40f2e46622b9ac98c4a89ae5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/pbotcli/releases/download/v1.6.0/pbotcli-cli-x86_64-apple-darwin.tar.xz"
      sha256 "b06e20b6ba7d7ff15b85a6d8b4d010d1982aab53b73255e434d9c35ae8489a80"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/pbotcli/releases/download/v1.6.0/pbotcli-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "aa90fe92cd51bea8f4e9cdc8d3cc1af1f9071a5d806eb9d85146e3e6210c9e4d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/pbotcli/releases/download/v1.6.0/pbotcli-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "6b7e6cdaec98667ac463e7e20eb1567f049471d56148aa15c7d78f7c43fceaad"
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
