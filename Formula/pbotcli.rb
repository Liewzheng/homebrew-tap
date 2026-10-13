class Pbotcli < Formula
  desc "Rust CLI for Plane.so — provides the pbotcli and pbot binaries."
  homepage "https://github.com/Liewzheng/pbotcli"
  version "1.5.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/pbotcli/releases/download/v1.5.0/pbotcli-cli-aarch64-apple-darwin.tar.xz"
      sha256 "77dffa213f4b60e1dd534031922aff5d53a83e1e4d55f208afdb6c78def9bb2b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/pbotcli/releases/download/v1.5.0/pbotcli-cli-x86_64-apple-darwin.tar.xz"
      sha256 "f9b84ac10c43071822a80a64390c54cf1ffc017b5a5d69188d7577208e48d624"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Liewzheng/pbotcli/releases/download/v1.5.0/pbotcli-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "1ed3bab9525c0836edb177fb67bd03ba6e9c43c157007f571c116968466147a2"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Liewzheng/pbotcli/releases/download/v1.5.0/pbotcli-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "31616844b1c2f2a6bf43f2536500419f8489bb7eecceb35e05ee6bd2e4dd657c"
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
