class Knit < Formula
  desc "Local-first CLI for coordinating cross-repo feature bundles"
  homepage "https://github.com/marc-merino/knit"
  license "Apache-2.0"
  version "0.1.0-alpha.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b53284756f2e30eb6ec885352cd44278a98c329c8e77e439ea695bca9b79571a"
    else
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c0474c662b67074e69686f9e82f8339533b758d867668c393573a4da8bd87e88"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eaf8ba4b987825e68b42355d675043520a6e5eab48bb83959b5ede1ee54b79bf"
    else
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "92cec597215f0d58ba7119dc1a360aaec2f8ca0ce9c36da0ef1dc51061f66714"
    end
  end

  def install
    bin.install "knit"
  end

  test do
    assert_match "knit", shell_output("#{bin}/knit --version")
  end
end
