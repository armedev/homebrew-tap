class SmartSkills < Formula
  desc "Agent skill management tool - manage and sync AI agent instructions"
  homepage "https://github.com/armedev/smart-skills"
  license "MIT"

  # Version
  VERSION = "0.1.3"

  # SHA256 checksums
  SHA256_AARCH64_DARWIN = "004cfb645959d9a91d56ce2b6f99b9acb7b0fbe1e6bdc0d61909c64b9a3f5c65"
  SHA256_X86_64_DARWIN = "d457dfbedd989ecb6b229113b369386cc24f4aa945ad6eb0fcd22bf3b0bbc77d"
  SHA256_X86_64_LINUX = "bbbfb489a8575b328628b0e45e6b1395a30274e018969c865840ffa7edbd3702"

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
