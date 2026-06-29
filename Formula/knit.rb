class Knit < Formula
  desc "Local-first CLI for coordinating cross-repo feature bundles"
  homepage "https://github.com/marc-merino/knit"
  license "Apache-2.0"
  version "0.1.0-alpha.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "764e7c343cb84de595244cf31bcf23a829378e433fa44f2bbeaabdbed2a0eb1c"
    else
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0e80c248f575e7d36a79a789e6a0a848d17ca621543b24e8efc15565f503cb31"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8bc9049b4956077a9d121e92805aed3e5c1ea181d6f0ff9399887bf44d057f70"
    else
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b5ed3c698dae18418574c38ae144d1df7de57dec6c15c265226958fb11d28a7f"
    end
  end

  def install
    bin.install "knit"
  end

  test do
    assert_match "knit", shell_output("#{bin}/knit --version")
  end
end
