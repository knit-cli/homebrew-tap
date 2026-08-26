class Knit < Formula
  desc "Local-first CLI for coordinating cross-repo feature bundles"
  homepage "https://github.com/knit-cli/knit"
  version "0.1.0-alpha.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "bdad83969a0f082958622f09afbf62c4e602c27ae563a7959fa60ebb3b3ba607"
    else
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c22e8aed4a7db02f8ec1df5706b59e6eb4cc9cd0fa2dd21e84219a1fd205b688"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ad03c59e8f2b45bdb49c2665bbdc1455b3ed54690a51c354bdcfc8ad61d889c6"
    else
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3b38c1204536a042502dfbde2719418ded3e080b0becbce8ed68a52edb749683"
    end
  end

  def install
    bin.install "knit"
  end

  test do
    assert_match "knit", shell_output("#{bin}/knit --version")
  end
end
