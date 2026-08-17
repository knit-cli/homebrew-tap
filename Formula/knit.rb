class Knit < Formula
  desc "Local-first CLI for coordinating cross-repo feature bundles"
  homepage "https://github.com/marc-merino/knit"
  version "0.1.0-alpha.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fea22c1fb6b2f969bc8927412a39e20c07c45d3aa4df2c9aeb7b070d4a7eeb7c"
    else
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1b343bd23a92cca31d6ae2151d6156249ae87626c6aa17c2d196322604ecfbfa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "54ee73dd9ef9fe8a481df505a04d2ab95af373ce47eb3d57d96428f8e899f479"
    else
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "67a0637a57b99291eccc4fb7c1c46a4f066df1cbd29b64ff671946bdbf187f68"
    end
  end

  def install
    bin.install "knit"
  end

  test do
    assert_match "knit", shell_output("#{bin}/knit --version")
  end
end
