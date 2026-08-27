class Knit < Formula
  desc "Local-first CLI for coordinating cross-repo feature bundles"
  homepage "https://github.com/knit-cli/knit"
  version "0.1.0-alpha.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "dda660cb3dac7751a082529026f0ae3d03b85520e4c783cfaed88bf1f43a193e"
    else
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ab18908f612bd91ebe13af8d2044bdb7ecf9b14dd9c23f5347abae11a305cbe8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "86065aad1a625bdb9347462785bc328d9da32bc8f56309e7e4d0311c1fdbfb36"
    else
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3cfd0c2e025f706f5ff0103c42d02200f3c32a1968694e5c1d22fce400cdeb38"
    end
  end

  def install
    bin.install "knit"
  end

  test do
    assert_match "knit", shell_output("#{bin}/knit --version")
  end
end
