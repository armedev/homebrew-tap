class SmartSkills < Formula
  desc "Agent skill management tool - manage and sync AI agent instructions"
  homepage "https://github.com/armedev/smart-skills"
  license "MIT"

  # Version
  VERSION = "0.1.3"

  # SHA256 checksums
  SHA256_AARCH64_DARWIN = "15334134c0980f97a5f9373a984ce0d247fbe78125af7d92ef02dfc625c592d7"
  SHA256_X86_64_DARWIN = "b6ed26e76656699ed8cecf7c442e5dfd66a50a8b7d2fef5eade7b7e7ece917d8"
  SHA256_X86_64_LINUX = "baba7c3d6476969c3f50a95eddbf3f262de1695f34712bb8ed8493db785f436c"

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
