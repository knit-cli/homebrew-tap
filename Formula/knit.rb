class Knit < Formula
  desc "Local-first CLI for coordinating cross-repo feature bundles"
  homepage "https://github.com/knit-cli/knit"
  version "0.1.0-alpha.18"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "687d4c099015060248c016ccda79cbb724e11971fda42286978245d3aec37c9d"
    else
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "2edbd4aae9b68228552bcb36807e73a6773db072ae361495e967c55baefbaf15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "663c57e3f5d7363fff9faca46c9a5b3fe265202db13c281cd4262e9a124d6dc0"
    else
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9c5ad86633c856520341784b89032d0082e3edff045837031988ffb55d72541f"
    end
  end

  def install
    bin.install "knit"
  end

  test do
    assert_match "knit", shell_output("#{bin}/knit --version")
  end
end
