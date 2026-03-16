class SmartSkills < Formula
  desc "Agent skill management tool - manage and sync AI agent instructions"
  homepage "https://github.com/armedev/smart-skills"
  license "MIT"

  # Version
  VERSION = "0.1.6"

  # SHA256 checksums
  SHA256_AARCH64_DARWIN = "f8b3a950efbea0f30ab40a5579667888a10e90aaea27bb150b2dc21ca48c116c"
  SHA256_X86_64_DARWIN = "cbfb9edcea26939beaae0238e617261ede0987adb1bec43e9ce3e60272d477dd"
  SHA256_X86_64_LINUX = "c38a1f84f7e68842e461d22cb4be793be57a84810a918d56211024b515a74ec3"

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
