class Knit < Formula
  desc "Local-first CLI for coordinating cross-repo feature bundles"
  homepage "https://github.com/knit-cli/knit"
  version "0.1.0-alpha.21"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "84c0ce0295bfc1ebb8f81aef5fdaf2a6664df007a3e9b033b132cf99399406b5"
    else
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ba0bf8b88f298725b82c2a14c34f72b250d48955401068b916ac63fd5cb1f8a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "492cbf37c72fbb8dc45b0953558283005829ae4d99781bebd48cce27e788ecd7"
    else
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1ed529614aa39847208997e7bb2c29f2a65f5020cfde9144b453d9fb43fa939f"
    end
  end

  def install
    bin.install "knit"
  end

  test do
    assert_match "knit", shell_output("#{bin}/knit --version")
  end
end
