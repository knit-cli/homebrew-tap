class Knit < Formula
  desc "Local-first CLI for coordinating cross-repo feature bundles"
  homepage "https://github.com/marc-merino/knit"
  license "Apache-2.0"
  version "0.1.0-alpha.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9b42460ed2af94d6570e67614206887eb2628e08e129e8c7418f29995cf52068"
    else
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "f5d6d27d38aa2d6abbb6b87ff0e003601567fa11e308c5de35cb57e06e264ae3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9a234cb9f50aac0cc09b6e50cafb2f83bf57b657f1e0ddaa751474b57a920f9b"
    else
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "77e35142445ada68adb5e22de59652a0dbc4f05d74eab19fd0a47de4fc091733"
    end
  end

  def install
    bin.install "knit"
  end

  test do
    assert_match "knit", shell_output("#{bin}/knit --version")
  end
end
