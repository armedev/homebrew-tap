class SmartSkills < Formula
  desc "Agent skill management tool - manage and sync AI agent instructions"
  homepage "https://github.com/armedev/smart-skills"
  license "MIT"

  # Version
  VERSION = "0.1.2"

  # SHA256 checksums
  SHA256_AARCH64_DARWIN = "90c225c4ed26a7352eb9ee8a5c6e4c144dbfbb436c3cbc6662a61577b843aca1"
  SHA256_X86_64_DARWIN = "f50b4d263f64b2b5f0f92caad81d060a51f69f46fd271ac9691e1e1f344d4e25"
  SHA256_X86_64_LINUX = "a4a2d60bac97736064d32f203254283733c14d0d5c9d76fcf8b1c6ebb2cc5cb1"

  version VERSION

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/armedev/smart-skills/releases/download/v#{VERSION}/smart-skills-aarch64-apple-darwin.tar.gz"
      sha256 SHA256_AARCH64_DARWIN
    else
      url "https://github.com/armedev/smart-skills/releases/download/v#{VERSION}/smart-skills-x86_64-apple-darwin.tar.gz"
      sha256 SHA256_X86_64_DARWIN
    end
  end

  on_linux do
    url "https://github.com/armedev/smart-skills/releases/download/v#{VERSION}/smart-skills-x86_64-unknown-linux-gnu.tar.gz"
    sha256 SHA256_X86_64_LINUX
  end

  def install
    bin.install "smart-skills"
  end

  test do
    assert_match "smart-skills", shell_output("#{bin}/smart-skills --help")
  end
end
